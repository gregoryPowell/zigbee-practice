################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.3.2/util/third_party/segger/systemview/SEGGER/subdir.mk
-include gecko_sdk_4.3.2/util/third_party/printf/src/subdir.mk
-include gecko_sdk_4.3.2/util/third_party/printf/subdir.mk
-include gecko_sdk_4.3.2/util/third_party/mbedtls/library/subdir.mk
-include gecko_sdk_4.3.2/util/silicon_labs/silabs_core/memory_manager/subdir.mk
-include gecko_sdk_4.3.2/util/plugin/security_manager/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/stack/zigbee/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/stack/stubs/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/stack/security/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/stack/framework/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/stack/core/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/stack/config/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/app/xncp/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/app/util/security/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/app/util/ezsp/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/app/framework/plugin/debug-print/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/app/framework/common/subdir.mk
-include gecko_sdk_4.3.2/protocol/zigbee/app/em260/subdir.mk
-include gecko_sdk_4.3.2/platform/service/udelay/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/token_manager/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/system/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/sleeptimer/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/power_manager/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/legacy_printf/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/legacy_ncp_ash/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/legacy_hal_wdog/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/legacy_hal/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/legacy_common_ash/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/iostream/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/hfxo_manager/src/subdir.mk
-include gecko_sdk_4.3.2/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/subdir.mk
-include gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/subdir.mk
-include gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/subdir.mk
-include gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_sequencer/subdir.mk
-include gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_pti/subdir.mk
-include gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_power_manager_init/subdir.mk
-include gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_ant_div/subdir.mk
-include gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/pa-conversions/subdir.mk
-include gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/subdir.mk
-include gecko_sdk_4.3.2/platform/peripheral/src/subdir.mk
-include gecko_sdk_4.3.2/platform/emlib/src/subdir.mk
-include gecko_sdk_4.3.2/platform/emdrv/nvm3/src/subdir.mk
-include gecko_sdk_4.3.2/platform/emdrv/dmadrv/src/subdir.mk
-include gecko_sdk_4.3.2/platform/driver/debug/src/subdir.mk
-include gecko_sdk_4.3.2/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.3.2/platform/common/src/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/app_properties/subdir.mk
-include gecko_sdk_4.3.2/platform/bootloader/api/subdir.mk
-include gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32MG24/Source/subdir.mk
-include gecko_sdk_4.3.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/subdir.mk
-include gecko_sdk_4.3.2/hardware/driver/configuration_over_swo/src/subdir.mk
-include gecko_sdk_4.3.2/hardware/board/src/subdir.mk
-include autogen/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := ncp-uart-hw
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: ncp-uart-hw.axf

# Tool invocations
ncp-uart-hw.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m33 -mthumb -T "C:\Users\Austin\Documents\zigbee-practice\NCP\ncp-uart-hw\autogen\linkerfile_base.ld" -Xlinker --gc-sections -Xlinker -Map="ncp-uart-hw.map" -mfpu=fpv5-sp-d16 -mfloat-abi=hard --specs=nano.specs -o ncp-uart-hw.axf -Wl,--start-group "./app.o" "./main.o" "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./autogen/sl_iostream_handles.o" "./autogen/sl_iostream_init_usart_instances.o" "./autogen/sl_power_manager_handler.o" "./autogen/sl_rail_util_ieee802154_phy_select.o" "./autogen/sl_rail_util_ieee802154_stack_event.o" "./autogen/zigbee_common_callback_dispatcher.o" "./autogen/zigbee_ncp_callback_dispatcher.o" "./autogen/zigbee_stack_callback_dispatcher.o" "./gecko_sdk_4.3.2/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.3.2/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.3.2/hardware/driver/configuration_over_swo/src/sl_cos.o" "./gecko_sdk_4.3.2/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o" "./gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32MG24/Source/startup_efr32mg24.o" "./gecko_sdk_4.3.2/platform/Device/SiliconLabs/EFR32MG24/Source/system_efr32mg24.o" "./gecko_sdk_4.3.2/platform/bootloader/api/btl_interface.o" "./gecko_sdk_4.3.2/platform/bootloader/api/btl_interface_storage.o" "./gecko_sdk_4.3.2/platform/bootloader/app_properties/app_properties.o" "./gecko_sdk_4.3.2/platform/common/src/sl_assert.o" "./gecko_sdk_4.3.2/platform/common/src/sl_slist.o" "./gecko_sdk_4.3.2/platform/common/src/sl_string.o" "./gecko_sdk_4.3.2/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.3.2/platform/driver/debug/src/sl_debug_swo.o" "./gecko_sdk_4.3.2/platform/emdrv/dmadrv/src/dmadrv.o" "./gecko_sdk_4.3.2/platform/emdrv/nvm3/src/nvm3_default_common_linker.o" "./gecko_sdk_4.3.2/platform/emdrv/nvm3/src/nvm3_hal_flash.o" "./gecko_sdk_4.3.2/platform/emdrv/nvm3/src/nvm3_lock.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_burtc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_core.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_emu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_ldma.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_msc.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_prs.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_rmu.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_se.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_system.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_timer.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_usart.o" "./gecko_sdk_4.3.2/platform/emlib/src/em_wdog.o" "./gecko_sdk_4.3.2/platform/peripheral/src/peripheral_sysrtc.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/coexistence/protocol/ieee802154_uc/coexistence-802154.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_ant_div/sl_rail_util_ant_div.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o" "./gecko_sdk_4.3.2/platform/radio/rail_lib/plugin/rail_util_sequencer/sl_rail_util_sequencer.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o" "./gecko_sdk_4.3.2/platform/security/sl_component/se_manager/src/sl_se_manager_util.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_aead.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_builtin_keys.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_cipher.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_derivation.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_key_management.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_mac.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_driver_signature.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_aead.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_cipher.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_driver_mac.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_opaque_key_derivation.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_aead.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_cipher.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_hash.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_driver_mac.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_transparent_key_derivation.o" "./gecko_sdk_4.3.2/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_dcdc_s2.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_emu_s2.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_hfxo_s2.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_lfxo_s2.o" "./gecko_sdk_4.3.2/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.3.2/platform/service/hfxo_manager/src/sl_hfxo_manager.o" "./gecko_sdk_4.3.2/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_debug.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_swo_itm_8.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_uart.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_usart.o" "./gecko_sdk_4.3.2/platform/service/iostream/src/sl_iostream_vuart.o" "./gecko_sdk_4.3.2/platform/service/legacy_common_ash/src/ash-common.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/base-replacement.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/bootloader-common.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/bootloader-interface-app.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/bootloader-interface-standalone.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/bootloader-interface.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/crc.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/diagnostic.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/ember-phy.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/faults.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/random.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal/src/token_legacy.o" "./gecko_sdk_4.3.2/platform/service/legacy_hal_wdog/src/sl_legacy_hal_wdog.o" "./gecko_sdk_4.3.2/platform/service/legacy_ncp_ash/src/ash-ncp.o" "./gecko_sdk_4.3.2/platform/service/legacy_printf/src/sl_legacy_printf.o" "./gecko_sdk_4.3.2/platform/service/power_manager/src/sl_power_manager.o" "./gecko_sdk_4.3.2/platform/service/power_manager/src/sl_power_manager_debug.o" "./gecko_sdk_4.3.2/platform/service/power_manager/src/sl_power_manager_hal_s2.o" "./gecko_sdk_4.3.2/platform/service/sleeptimer/src/sl_sleeptimer.o" "./gecko_sdk_4.3.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o" "./gecko_sdk_4.3.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_sysrtc.o" "./gecko_sdk_4.3.2/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o" "./gecko_sdk_4.3.2/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.3.2/platform/service/system/src/sl_system_process_action.o" "./gecko_sdk_4.3.2/platform/service/token_manager/src/sl_token_def.o" "./gecko_sdk_4.3.2/platform/service/token_manager/src/sl_token_manager.o" "./gecko_sdk_4.3.2/platform/service/token_manager/src/sl_token_manufacturing.o" "./gecko_sdk_4.3.2/platform/service/udelay/src/sl_udelay.o" "./gecko_sdk_4.3.2/platform/service/udelay/src/sl_udelay_armv6m_gcc.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-binding-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-green-power-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-messaging-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-networking-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-secure-ezsp-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-security-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-trust-center-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/command-handlers-zll-generated.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/em260-common.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/ncp-stack-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/em260/serial-interface-uart.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/framework/common/zigbee_app_framework_sleep.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/framework/common/zigbee_app_framework_stack_cb.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/framework/common/zigbee_enhanced_routing.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/framework/common/zigbee_ncp_framework_cb.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/util/security/security-address-cache.o" "./gecko_sdk_4.3.2/protocol/zigbee/app/xncp/xncp-stubs.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/config/ember-configuration-access.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/config/ember-configuration.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/core/ember-multi-network-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/core/multi-pan-common.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/core/multi-pan-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/framework/strong-random-api.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/framework/zigbee-event-logger-stub-gen.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/cbke-crypto-engine-163k1-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/cbke-crypto-engine-283k1-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-sign-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-283k1-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/cbke-crypto-engine-dsa-verify-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/cbke-crypto-engine-stub.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/zigbee-security-manager-vault-support.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/security/zigbee-security-manager.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/stubs/sl_zigbee_dynamic_commissioning_stubs.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/stubs/sl_zigbee_fragmentation_stubs.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/stubs/sl_zigbee_r23_misc_support_stubs.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/zigbee/aps-keys-full.o" "./gecko_sdk_4.3.2/protocol/zigbee/stack/zigbee/sli_zigbee_zdo_cluster_filter.o" "./gecko_sdk_4.3.2/util/plugin/security_manager/security_manager.o" "./gecko_sdk_4.3.2/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/cipher.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/cipher_wrap.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/constant_time.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/platform.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/platform_util.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_aead.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_cipher.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_client.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_driver_wrappers.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_ecp.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_hash.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_mac.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_rsa.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_se.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_slot_management.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/psa_crypto_storage.o" "./gecko_sdk_4.3.2/util/third_party/mbedtls/library/threading.o" "./gecko_sdk_4.3.2/util/third_party/printf/printf.o" "./gecko_sdk_4.3.2/util/third_party/printf/src/iostream_printf.o" "./gecko_sdk_4.3.2/util/third_party/segger/systemview/SEGGER/SEGGER_RTT.o" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//platform/radio/rail_lib/autogen/librail_release/librail_efr32xg24_gcc_release.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/binding-table-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/binding-table-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/ncp-binding-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/ncp-binding-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/debug-basic-library-cortexm3-gcc-efr32mg24-rail/debug-basic-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/debug-extended-library-cortexm3-gcc-efr32mg24-rail/debug-extended-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/end-device-bind-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/end-device-bind-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/gp-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/gp-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/ncp-gp-library-cortexm3-gcc-efr32mg24-rail/ncp-gp-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/install-code-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/install-code-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/em260-uart-util-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/em260-uart-util-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/packet-validate-library-cortexm3-gcc-efr32mg24-rail/packet-validate-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/zigbee-pro-stack-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/zigbee-pro-stack.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/ncp-pro-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/ncp-pro-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/zigbee-r22-support-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/zigbee-r22-support-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/source-route-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/source-route-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/ncp-source-route-library-cortexm3-gcc-efr32mg24-rail/ncp-source-route-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/zll-library-cortexm3-gcc-efr32mg24-rail-ember_multi_network_stripped/zll-library.a" "C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk//protocol/zigbee/build/ncp-zll-library-cortexm3-gcc-efr32mg24-rail/ncp-zll-library.a" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: ncp-uart-hw.out'
	arm-none-eabi-objcopy "ncp-uart-hw.axf" "ncp-uart-hw.out"
	@echo ' '

	@echo 'Building hex file: ncp-uart-hw.hex'
	arm-none-eabi-objcopy -O ihex "ncp-uart-hw.axf" "ncp-uart-hw.hex"
	@echo ' '

	@echo 'Building bin file: ncp-uart-hw.bin'
	arm-none-eabi-objcopy -O binary "ncp-uart-hw.axf" "ncp-uart-hw.bin"
	@echo ' '

	@echo 'Building s37 file: ncp-uart-hw.s37'
	arm-none-eabi-objcopy -O srec "ncp-uart-hw.axf" "ncp-uart-hw.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "ncp-uart-hw.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) ncp-uart-hw.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
