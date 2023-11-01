/***************************************************************************//**
 * @file
 * @brief Functionality for periodically updating the NWK key.
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

#include "app/framework/include/af.h"
#include "app/framework/util/common.h"
#include "app/framework/util/util.h"

// *****************************************************************************
// Globals

#ifdef SL_COMPONENT_CATALOG_PRESENT
#include "sl_component_catalog.h"
#endif
#include "trust-center-nwk-key-update-periodic-config.h"
sl_zigbee_event_t emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEvent;
#define myEvent (&emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEvent)
void emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventHandler(sl_zigbee_event_t * event);

// All delays are converted into milliseconds. Ensure that the converted millisecond value
// is under EMBER_MAX_EVENT_DELAY_MS
#if KEY_UPDATE_PERIOD_MINUTES > (EMBER_MAX_EVENT_DELAY_MS / 60000)
  #error "Error: Configured key update period is too large"
#endif

// *****************************************************************************

extern EmberStatus emberAfTrustCenterStartNetworkKeyUpdate(void);

static void scheduleNextUpdate(void)
{
  sl_zigbee_event_set_delay_minutes(myEvent, KEY_UPDATE_PERIOD_MINUTES);
  emberAfAppPrintln("Next NWK key update in %d minutes",
                    KEY_UPDATE_PERIOD_MINUTES);
}

void emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventHandler(sl_zigbee_event_t * event)
{
  // A very simple approach is to always kick off the NWK key update
  // assuming it will take much longer to complete than the period
  // at which we initiate.  If something went wrong and the NWK key update
  // didn't complete, a subsequent key update attempt may help recover this and
  // finish the previous one.  This also handles the reboot case where
  // the TC may have rebooted while in the middle of the key update.

  EmberStatus status = emberAfTrustCenterStartNetworkKeyUpdate();
  emberAfAppPrintln("Starting NWK Key update, status: 0x%X", status);
  scheduleNextUpdate();
}

void emberAfPluginTrustCenterNwkKeyUpdatePeriodicInitCallback(uint8_t init_level)
{
  switch (init_level) {
    case SL_ZIGBEE_INIT_LEVEL_EVENT:
    {
      sl_zigbee_event_init(myEvent,
                           emberAfPluginTrustCenterNwkKeyUpdatePeriodicMyEventHandler);
      break;
    }

    case SL_ZIGBEE_INIT_LEVEL_DONE:
    {
      // Even though we might not be on a network at this point,
      // we want to schedule the process for sending key updates from
      // now on.

      // However for the test-harness, we manually manipulate the process
      // so we don't want it to automatically kick off.
#if !defined(SL_CATALOG_ZIGBEE_TEST_HARNESS_PRESENT)
      scheduleNextUpdate();
#endif
    }
  }
}
