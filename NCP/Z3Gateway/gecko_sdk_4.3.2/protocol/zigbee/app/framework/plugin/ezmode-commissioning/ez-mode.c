/***************************************************************************//**
 * @file
 * @brief This file provides a function set for initiating ez-mode commissioning
 * as both a client and a server.
 *******************************************************************************
 * # License
 * <b>Copyright 2018 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

// *****************************************************************************
// * ez-mode.c
// *
// *
// *
// * Copyright 2013 Silicon Laboratories, Inc.                              *80*
// *****************************************************************************

#include "app/framework/include/af.h"
#include "app/framework/util/af-main.h"
#include "stack/include/zigbee-device-stack.h"
#include "ez-mode.h"

//------------------------------------------------------------------------------
// Forward Declaration

#include "ezmode-commissioning-config.h"
static sl_zigbee_event_t stateEvent;
static void stateEventHandler(sl_zigbee_event_t * event);
static void serviceDiscoveryCallback(const EmberAfServiceDiscoveryResult *result);
static void createBinding(uint8_t *address);

//------------------------------------------------------------------------------
// Globals

static uint8_t currentIdentifyingEndpoint;
static EmberNodeId currentIdentifyingAddress;

static uint8_t ezmodeClientEndpoint;

static EmberAfEzModeCommissioningDirection bindingDirection;
static const uint16_t* clusterIdsForEzModeMatch;
static uint8_t clusterIdsForEzModeMatchLength;
static uint16_t ezmodeClientCluster;
static uint8_t bindingIndex;
static uint8_t networkIndex;

typedef enum {
  EZMODE_OFF,
  EZMODE_BROAD_PJOIN,
  EZMODE_IDENTIFY,
  EZMODE_IDENTIFY_WAIT,
  EZMODE_MATCH,
  EZMODE_BIND,
  EZMODE_BOUND
} EzModeState;

static EzModeState ezModeState = EZMODE_OFF;

//------------------------------------------------------------------------------

static void complete(void)
{
  emberAfPluginEzmodeCommissioningClientCompleteCallback(bindingIndex);
  ezModeState = EZMODE_OFF;
}

static void identifyRequestMessageSentCallback(EmberOutgoingMessageType type,
                                               uint16_t indexOrDestination,
                                               EmberApsFrame *apsFrame,
                                               uint16_t msgLen,
                                               uint8_t *message,
                                               EmberStatus status)
{
  // We only care about cleaning up state machine if still in Identify state
  // If we've moved on to Match state, don't do these things as they will abort
  // the state machine prematurely.
  if (ezModeState == EZMODE_IDENTIFY ) {
    if (status == EMBER_SUCCESS) {
      ezModeState = EZMODE_IDENTIFY_WAIT;
      sl_zigbee_event_set_delay_ms(&stateEvent,
                                   (10 * MILLISECOND_TICKS_PER_SECOND));
    } else {
      complete();
    }
  }
}

void sli_zigbee_af_ezmode_commissioning_init_callback(uint8_t init_level)
{
  (void)init_level;

  sl_zigbee_event_init(&stateEvent,
                       stateEventHandler);
}
static void stateEventHandler(sl_zigbee_event_t * event)
{
  EmberStatus status;
  EmberEUI64 add;

  if (emberAfPushNetworkIndex(networkIndex) != EMBER_SUCCESS) {
    complete();
    return;
  }

  sl_zigbee_event_set_inactive(&stateEvent);
  switch (ezModeState) {
    case EZMODE_BROAD_PJOIN:
      emberAfCorePrintln("<ezmode bpjoin>");
      sli_zigbee_af_permit_join(180, true); //Send out a broadcast pjoin
      ezModeState = EZMODE_IDENTIFY;
      sl_zigbee_event_set_delay_ms(&stateEvent, MILLISECOND_TICKS_PER_SECOND);
      break;
    case EZMODE_IDENTIFY:
      emberAfCorePrintln("<ezmode identify>");
      sli_zigbee_af_permit_join(180, true); //Send out a broadcast pjoin
      emberAfFillCommandIdentifyClusterIdentifyQuery();
      emberAfSetCommandEndpoints(ezmodeClientEndpoint,
                                 EMBER_BROADCAST_ENDPOINT);
      status = emberAfSendCommandBroadcastWithCallback(EMBER_SLEEPY_BROADCAST_ADDRESS,
                                                       identifyRequestMessageSentCallback);
      if (status != EMBER_SUCCESS) {
        complete();
      }
      break;
    case EZMODE_IDENTIFY_WAIT:
      emberAfCorePrintln("<ezmode identify timeout>");
      complete();
      break;
    case EZMODE_MATCH:
      emberAfCorePrintln("<ezmode match>");
      status = emberAfFindClustersByDeviceAndEndpoint(currentIdentifyingAddress,
                                                      currentIdentifyingEndpoint,
                                                      serviceDiscoveryCallback);
      if (status != EMBER_SUCCESS) {
        complete();
      }
      break;
    case EZMODE_BIND:
      emberAfCorePrintln("<ezmode bind>");
      status = emberLookupEui64ByNodeId(currentIdentifyingAddress, add);
      if (status == EMBER_SUCCESS) {
        createBinding(add);
      } else {
        status = emberAfFindIeeeAddress(currentIdentifyingAddress,
                                        serviceDiscoveryCallback);
        if (status != EMBER_SUCCESS) {
          complete();
        }
      }
      break;
    case EZMODE_BOUND:
      emberAfCorePrintln("<ezmode bound>");
      complete();
      break;
    default:
      break;
  }

  (void) emberAfPopNetworkIndex();
}

/** EZ-MODE CLIENT **/
/**
 * Kicks off the ezmode commissioning process by sending out
 * an identify query command to the given endpoint
 *
 * input:
 *   endpoint:
 *   direction: server to client / client to server
 *   clusterIds: list of cluster ids. *NOTE* The API only keeps the pointer to
 *     to the data structure. The data is expected to exist throughout the
 *     ezmode-commissioning calls.
 *   clusterIdsLength: # of ids defined in clusterIds
 */
EmberStatus emberAfEzmodeClientCommission(uint8_t endpoint,
                                          EmberAfEzModeCommissioningDirection direction,
                                          const uint16_t* clusterIds,
                                          uint8_t  clusterIdsLength)
{
  // sanity check inputs...
  if (!clusterIds) {
    return EMBER_BAD_ARGUMENT;
  }

  bindingIndex = EMBER_NULL_BINDING;
  bindingDirection = direction;
  clusterIdsForEzModeMatchLength = clusterIdsLength;

  if (clusterIdsLength > 0) {
    clusterIdsForEzModeMatch = clusterIds;
  } else {
    clusterIdsForEzModeMatch = NULL;
  }

  ezmodeClientEndpoint = endpoint;
  ezModeState = EZMODE_BROAD_PJOIN;
  networkIndex = emberGetCurrentNetwork();
  sl_zigbee_event_set_active(&stateEvent);
  return EMBER_SUCCESS;
}

bool emberAfIdentifyClusterIdentifyQueryResponseCallback(uint16_t timeout)
{
  // ignore our own broadcast and only take the first identify
  // Note that we may still be in IDENTIFY state if someone responds to the broadast before it
  // is done getting echoed to its neighbors (to trigger Message Sent callback).
  if (emberAfGetNodeId() != emberAfCurrentCommand()->source) {
    if ((ezModeState == EZMODE_IDENTIFY_WAIT || ezModeState == EZMODE_IDENTIFY)
        && timeout != 0) {
      currentIdentifyingAddress = emberAfCurrentCommand()->source;
      currentIdentifyingEndpoint = emberAfCurrentCommand()->apsFrame->sourceEndpoint;
      ezModeState = EZMODE_MATCH;
      sl_zigbee_event_set_active(&stateEvent);
    }
    emberAfSendImmediateDefaultResponse(EMBER_ZCL_STATUS_SUCCESS);
  }
  return true;
}

static void createBinding(uint8_t *address)
{
  // create binding
  uint8_t i;
  EmberBindingTableEntry candidate;

  // first look for a duplicate binding, we should not add duplicates
  for (i = 0; i < EMBER_BINDING_TABLE_SIZE; i++) {
    if (emberGetBinding(i, &candidate) == EMBER_SUCCESS
        && candidate.type == EMBER_UNICAST_BINDING
        && candidate.local == ezmodeClientEndpoint
        && candidate.clusterId == ezmodeClientCluster
        && candidate.remote == currentIdentifyingEndpoint
        && MEMCOMPARE(candidate.identifier, address, EUI64_SIZE) == 0) {
      bindingIndex = i;
      ezModeState = EZMODE_BOUND;
      sl_zigbee_event_set_active(&stateEvent);
      return;
    }
  }

  for (i = 0; i < EMBER_BINDING_TABLE_SIZE; i++) {
    if (emberGetBinding(i, &candidate) == EMBER_SUCCESS
        && candidate.type == EMBER_UNUSED_BINDING) {
      candidate.type = EMBER_UNICAST_BINDING;
      candidate.local = ezmodeClientEndpoint;
      candidate.remote = currentIdentifyingEndpoint;
      candidate.clusterId = ezmodeClientCluster;
      MEMMOVE(candidate.identifier, address, EUI64_SIZE);
      if (emberSetBinding(i, &candidate) == EMBER_SUCCESS) {
        emberSetBindingRemoteNodeId(i, currentIdentifyingAddress);
        bindingIndex = i;
        ezModeState = EZMODE_BOUND;
        sl_zigbee_event_set_active(&stateEvent);
        return;
      }
    }
  }

  complete();
}

static void serviceDiscoveryCallback(const EmberAfServiceDiscoveryResult *result)
{
  uint8_t i = 0;
  uint8_t j = 0;
  if (emberAfHaveDiscoveryResponseStatus(result->status)) {
    if (result->zdoRequestClusterId == SIMPLE_DESCRIPTOR_REQUEST) {
      EmberAfClusterList *list = (EmberAfClusterList*)result->responseData;
      uint8_t clusterCount;
      const uint16_t* clusterList;

      // decide where to create the binding (server/client)
      if (bindingDirection == EMBER_AF_EZMODE_COMMISSIONING_CLIENT_TO_SERVER) {
        clusterCount = list->inClusterCount;
        clusterList = list->inClusterList;
      } else { // EMBER_AF_EZMODE_COMMISSIONING_SERVER_TO_CLIENT
        clusterCount = list->outClusterCount;
        clusterList = list->outClusterList;
      }

      for (i = 0; i < clusterCount; i++) {
        uint16_t cluster = clusterList[i];
        for (j = 0; j < clusterIdsForEzModeMatchLength; j++) {
          if (cluster == clusterIdsForEzModeMatch[j]) {
            ezmodeClientCluster = cluster;
            ezModeState = EZMODE_BIND;
            sl_zigbee_event_set_active(&stateEvent);
            return;
          }
        }
      }
    } else if (result->zdoRequestClusterId == IEEE_ADDRESS_REQUEST) {
      createBinding((uint8_t *)result->responseData);
      return;
    }
  }
  complete();
}

/** EZ-MODE SERVER **/
/**
 * Puts the device into identify mode for the given endpoint
 * this is all that an ezmode server is responsible for
 */
EmberStatus emberAfEzmodeServerCommission(uint8_t endpoint)
{
  return emberAfEzmodeServerCommissionWithTimeout(endpoint, EMBER_AF_PLUGIN_EZMODE_COMMISSIONING_IDENTIFY_TIMEOUT);
}

EmberStatus emberAfEzmodeServerCommissionWithTimeout(uint8_t endpoint, uint16_t identifyTimeoutSeconds)
{
  EmberAfStatus afStatus;
  if ((identifyTimeoutSeconds < 1) || (identifyTimeoutSeconds > 254)) {
    return EMBER_BAD_ARGUMENT;
  }
  afStatus =  emberAfWriteAttribute(endpoint,
                                    ZCL_IDENTIFY_CLUSTER_ID,
                                    ZCL_IDENTIFY_TIME_ATTRIBUTE_ID,
                                    CLUSTER_MASK_SERVER,
                                    (uint8_t *)&identifyTimeoutSeconds,
                                    ZCL_INT16U_ATTRIBUTE_TYPE);
  if (afStatus != EMBER_ZCL_STATUS_SUCCESS) {
    return EMBER_BAD_ARGUMENT;
  } else {
    return EMBER_SUCCESS;
  }
}
