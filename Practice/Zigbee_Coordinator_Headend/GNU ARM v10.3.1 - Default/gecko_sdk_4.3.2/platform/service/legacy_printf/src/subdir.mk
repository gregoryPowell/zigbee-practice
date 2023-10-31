################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk/platform/service/legacy_printf/src/sl_legacy_printf.c 

OBJS += \
./gecko_sdk_4.3.2/platform/service/legacy_printf/src/sl_legacy_printf.o 

C_DEPS += \
./gecko_sdk_4.3.2/platform/service/legacy_printf/src/sl_legacy_printf.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.3.2/platform/service/legacy_printf/src/sl_legacy_printf.o: C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk/platform/service/legacy_printf/src/sl_legacy_printf.c gecko_sdk_4.3.2/platform/service/legacy_printf/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32MG24B220F1536IM48=1' '-DSL_APP_PROPERTIES=1' '-DHARDWARE_BOARD_DEFAULT_RF_BAND_2400=1' '-DHARDWARE_BOARD_SUPPORTS_1_RF_BAND=1' '-DHARDWARE_BOARD_SUPPORTS_RF_BAND_2400=1' '-DSL_BOARD_NAME="BRD4187C"' '-DSL_BOARD_REV="A01"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DCORTEXM3=1' '-DCORTEXM3_EFM32_MICRO=1' '-DCORTEXM3_EFR32=1' '-DPHY_RAIL=1' '-DPLATFORM_HEADER="platform-header.h"' '-DSL_LEGACY_HAL_ENABLE_WATCHDOG=1' '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DCUSTOM_TOKEN_HEADER="sl_token_manager_af_token_header.h"' '-DUSE_NVM3=1' '-DUC_BUILD=1' '-DEMBER_MULTI_NETWORK_STRIPPED=1' '-DSL_ZIGBEE_PHY_SELECT_STACK_SUPPORT=1' '-DSL_ZIGBEE_STACK_COMPLIANCE_REVISION=22' '-DCONFIGURATION_HEADER="app/framework/util/config.h"' -I"C:\Users\Austin\Documents\zigbee-practice\Practice\Zigbee_Coordinator_Headend\config" -I"C:\Users\Austin\Documents\zigbee-practice\Practice\Zigbee_Coordinator_Headend\config\zcl" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFR32MG24/Include" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/bootloader/api" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/cli/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/cli/src" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/configuration_over_swo/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/debug/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/dmadrv/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/common/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/hfxo_manager/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/driver/leddrv/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/legacy_hal/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/legacy_hal_wdog/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/legacy_printf/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/config/preset" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_mbedtls_support/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/include" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/third_party/mbedtls/library" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/nvm3/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/peripheral/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/power_manager/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/third_party/printf" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/third_party/printf/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/sl_psa_driver/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/common" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ble" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/ieee802154" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/wmbus" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/zwave" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/protocol/sidewalk" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_ieee802154" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/pa-conversions/efr32xg24" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_power_manager_init" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin/rail_util_pti" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/security/sl_component/se_manager/src" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/plugin/security_manager" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core/memory_manager" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/token_manager/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/service/udelay/inc" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/common" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/basic" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack/include" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/em260" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/util/serial" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/service-function" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/counters" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/debug-print" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/groups-server" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/identify" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/level-control" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/network-steering" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/on-off" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/scan-dispatch" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/scenes" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/scenes-client" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack/security" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/signature-decode" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/plugin" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack/gp" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack/zigbee" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/mac/rail_mux" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/mac" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//util/silicon_labs/silabs_core" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack/core" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/stack/mac" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/update-tc-link-key" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/include" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/util" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/security" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/util/zigbee-framework" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/util/counters" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/cli" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/util/common" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/util/security" -I"C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/app/framework/plugin/zll-level-control-server" -I"C:\Users\Austin\Documents\zigbee-practice\Practice\Zigbee_Coordinator_Headend\autogen" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -fno-builtin-printf -fno-builtin-sprintf --specs=nano.specs -Wno-unused-parameter -Wno-missing-field-initializers -Wno-missing-braces -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.3.2/platform/service/legacy_printf/src/sl_legacy_printf.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


