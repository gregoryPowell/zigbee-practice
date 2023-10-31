/***************************************************************************//**
 * @file app.c
 * @brief Callbacks implementation and application specific code.
 *******************************************************************************
 * # License
 * <b>Copyright 2021 Silicon Laboratories Inc. www.silabs.com</b>
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
#include "sl_simple_button.h"
#include "sl_simple_button_instances.h"
#include "sl_simple_led_instances.h"

#define BUTTON0 0
#define BUTTON1 1

/** @brief Complete network steering.
 *
 * This callback is fired when the Network Steering plugin is complete.
 *
 * @param status On success this will be set to EMBER_SUCCESS to indicate a
 * network was joined successfully. On failure this will be the status code of
 * the last join or scan attempt. Ver.: always
 *
 * @param totalBeacons The total number of 802.15.4 beacons that were heard,
 * including beacons from different devices with the same PAN ID. Ver.: always
 * @param joinAttempts The number of join attempts that were made to get onto
 * an open Zigbee network. Ver.: always
 *
 * @param finalState The finishing state of the network steering process. From
 * this, one is able to tell on which channel mask and with which key the
 * process was complete. Ver.: always
 */
void emberAfPluginNetworkSteeringCompleteCallback(EmberStatus status,
                                                  uint8_t totalBeacons,
                                                  uint8_t joinAttempts,
                                                  uint8_t finalState)
{
  sl_zigbee_app_debug_println("%s network %s: 0x%02X", "Join", "complete", status);
}

/** @brief
 *
 * Application framework equivalent of ::emberRadioNeedsCalibratingHandler
 */
void emberAfRadioNeedsCalibratingCallback(void)
{
  sl_mac_calibrate_current_channel();
}

// Sending on/off light message on button press
void
sl_button_on_change (const sl_button_t *handle)
{
  EmberStatus status;

  if (SL_SIMPLE_BUTTON_INSTANCE(BUTTON0) == handle)
    {
      if (sl_button_get_state (handle) == SL_SIMPLE_BUTTON_RELEASED)
        {
          emberAfFillCommandOnOffClusterOn();

          emberAfCorePrintln("Button0 is pressed");
          emberAfCorePrintln("Command is zcl on-off ON");

          emberAfSetCommandEndpoints (emberAfPrimaryEndpoint(), 1);
          status = emberAfSendCommandUnicast (EMBER_OUTGOING_DIRECT, 0x0000);

          if (status == EMBER_SUCCESS)
            {
              emberAfCorePrintln("Command is successfully sent");
            }
          else
            {
              emberAfCorePrintln("Failed to send");
              emberAfCorePrintln("Status code: 0x%x", status);
            }
        }
    }

  if (SL_SIMPLE_BUTTON_INSTANCE(BUTTON1) == handle)
    {
      if (sl_button_get_state (handle) == SL_SIMPLE_BUTTON_RELEASED)
        {
          emberAfFillCommandOnOffClusterOff();

          emberAfCorePrintln("Button1 is pressed");
          emberAfCorePrintln("Command is zcl on-off OFF");

          emberAfSetCommandEndpoints (emberAfPrimaryEndpoint(), 1);
          status = emberAfSendCommandUnicast (EMBER_OUTGOING_DIRECT, 0x0000);

          if (status == EMBER_SUCCESS)
            {
              emberAfCorePrintln("Command is successfully sent");
            }
          else
            {
              emberAfCorePrintln("Failed to send");
              emberAfCorePrintln("Status code: 0x%x", status);
            }
        }
    }
}

// Turning on/off light
void emberAfPostAttributeChangeCallback(uint8_t endpoint,
                                        EmberAfClusterId clusterId,
                                        EmberAfAttributeId attributeId,
                                        uint8_t mask,
                                        uint16_t manufacturerCode,
                                        uint8_t type,
                                        uint8_t size,
                                        uint8_t* value)
{
  if (clusterId == ZCL_ON_OFF_CLUSTER_ID
      && attributeId == ZCL_ON_OFF_ATTRIBUTE_ID
      && mask == CLUSTER_MASK_SERVER) {
    bool onOff;
    if (emberAfReadServerAttribute(endpoint,
                                   ZCL_ON_OFF_CLUSTER_ID,
                                   ZCL_ON_OFF_ATTRIBUTE_ID,
                                   (uint8_t *)&onOff,
                                   sizeof(onOff))
        == EMBER_ZCL_STATUS_SUCCESS) {
      if (onOff) {
        sl_led_turn_on(&sl_led_led0);
        sl_zigbee_app_debug_println("LED 0 was turned on by 0x%02X", endpoint);
      } else {
        sl_led_turn_off(&sl_led_led0);
        sl_zigbee_app_debug_println("LED 0 was turned off by 0x%02X", endpoint);
      }
    }
  }
}
