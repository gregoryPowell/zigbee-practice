/***************************************************************************//**
 * @file
 * @brief Macros for functional area and per-cluster debug printing
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

#ifndef __AF_DEBUG_PRINT__
#define __AF_DEBUG_PRINT__

#include "zcl-debug-print.h"

#if !defined(EMBER_AF_PRINT_OUTPUT) && defined(APP_SERIAL)
  #define EMBER_AF_PRINT_OUTPUT APP_SERIAL
#endif

extern uint16_t emberAfPrintActiveArea;

// These print functions are required by the CBKE crypto engine.
#define emberAfPrintZigbeeKey printZigbeeKey
#define emberAfPrintCert      printCert
#define emberAfPrintKey       printKey
#define emberAfPrintIeeeLine  printIeeeLine
#define emberAfPrintTextLine  printTextLine

#define emberAfPrintPublicKey(key)  printKey(true, key)
#define emberAfPrintPrivateKey(key) printKey(false, key)

/** @name Printing */
// @{

// Guaranteed print
/**
 * @brief Print that can't be turned off.
 *
 */
#define emberAfGuaranteedPrint(...)   emberAfPrint(0xFFFF, __VA_ARGS__)

/**
 * @brief Println that can't be turned off.
 */
#define emberAfGuaranteedPrintln(...) emberAfPrintln(0xFFFF, __VA_ARGS__)

/**
 * @brief Buffer print that can't be turned off.
 */
#define emberAfGuaranteedPrintBuffer(buffer, len, withSpace) emberAfPrintBuffer(0xFFFF, (buffer), (len), (withSpace))

/**
 * @brief String print that can't be turned off.
 */
#define emberAfGuaranteedPrintString(buffer) emberAfPrintString(0xFFFF, (buffer))

/**
 * @brief Long string print that can't be turned off.
 */
#define emberAfGuaranteedPrintLongString(buffer) emberAfPrintLongString(0xFFFF, (buffer))

/**
 * @brief returns true if certain debug area is enabled.
 */
bool emberAfPrintEnabled(uint16_t functionality);

/**
 * @brief Useful function to print a buffer
 */
void emberAfPrintBuffer(uint16_t area, const uint8_t *buffer, uint16_t bufferLen, bool withSpaces);

/**
 * @brief Useful function to print character strings.  The first byte of the
 * buffer specifies the length of the string.
 */
void emberAfPrintString(uint16_t area, const uint8_t *buffer);

/**
 * @brief Useful function to print long character strings.  The first two bytes
 * of the buffer specify the length of the string.
 */
void emberAfPrintLongString(uint16_t area, const uint8_t *buffer);

/**
 * @brief prints the specified text if certain debug are is enabled
 * @param functionality: one of the EMBER_AF_PRINT_xxx macros as defined by AppBuilder
 * @param formatString: formatString for varargs
 */
void emberAfPrint(uint16_t functionality, const char * formatString, ...);

/**
 * @brief prints the specified text if certain debug are is enabled.
 * Print-out will include the newline character at the end.
 * @param functionality: one of the EMBER_AF_PRINT_xxx macros as defined by AppBuilder
 * @param formatString: formatString for varargs
 */
void emberAfPrintln(uint16_t functionality, const char * formatString, ...);

/**
 * @brief turns on debugging for certain functional area
 */
void emberAfPrintOn(uint16_t functionality);

/**
 * @brief turns off debugging for certain functional area
 */
void emberAfPrintOff(uint16_t functionality);

#if !defined(EMBER_AF_GENERATE_CLI)
/** @brief turns on debugging for all functional areas
 */
void emberAfPrintAllOn(void);

/**
 * @brief turns off debugging for all functional areas
 */
void emberAfPrintAllOff(void);

/**
 * @brief prints current status of functional areas
 */
void emberAfPrintStatus(void);
#endif

/**
 * @brief prints eui64 stored in little endian format
 */
void emberAfPrintLittleEndianEui64(const EmberEUI64 eui64);

/**
 * @brief prints eui64 stored in big endian format
 */
void emberAfPrintBigEndianEui64(const EmberEUI64 eui64);

/**
 * @brief prints all message data in message format
 */
void emberAfPrintMessageData(uint8_t* data, uint16_t length);

/** @} END Printing */

void emberAfPrintZigbeeKey(const uint8_t *key);
void emberAfPrintCert(const uint8_t *cert);
void emberAfPrintCert283k1(const uint8_t *cert);
void emberAfPrintKey(bool publicKey, const uint8_t *key);
void emberAfPrintKey283k1(bool publickKey, const uint8_t *key);
void emberAfPrintIeeeLine(const EmberEUI64 ieee);
void emberAfPrintTextLine(const char * text);

void emberAfPrint8ByteBlocks(uint8_t numBlocks,
                             const uint8_t *block,
                             bool crBetweenBlocks);
void emberAfPrintIssuer(const uint8_t *issuer);

void emberAfPrintChannelListFromMask(uint32_t channelMask);

#endif // __AF_DEBUG_PRINT__
