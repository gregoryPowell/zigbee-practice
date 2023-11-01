####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 15                                              #
####################################################################

BASE_SDK_PATH = C:/Users/Austin/SimplicityStudio/SDKs/gecko_sdk
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.3.2

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

ASM_DEFS += \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DPLATFORM_HEADER="platform-header.h"' \
 '-DEZSP_HOST=1' \
 '-DGATEWAY_APP=1' \
 '-DUC_BUILD=1' \
 '-DEZSP_ASH=1' \
 '-DEZSP_UART=1' \
 '-DUSE_ZAP_CONFIG=1' \
 '-DEZSP_APPLICATION_HAS_MFGLIB_HANDLER=1' \
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I$(COPIED_SDK_PATH)/platform/service/cli/inc \
 -I$(COPIED_SDK_PATH)/platform/service/cli/src \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/platform/emlib/host/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/service/iostream/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/printf \
 -I$(COPIED_SDK_PATH)/util/third_party/printf/inc \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(COPIED_SDK_PATH)/platform/service/system/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning \
 -I$(COPIED_SDK_PATH)/. \
 -I$(COPIED_SDK_PATH)/protocol/zigbee \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/include \
 -I$(COPIED_SDK_PATH)/platform/radio/mac \
 -I$(COPIED_SDK_PATH)/platform/service/token_manager/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/gp \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-simple \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/xncp-test-harness \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

GROUP_START =
GROUP_END =

PROJECT_LIBS = \
 -lpthread \
 -lc \
 -lm

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

CXX_FLAGS += \
 -std=c++11 \
 -Wall \
 -Wextra \
 -Os \
 -Wno-unused-parameter \
 -Wno-missing-field-initializers \
 -Wno-missing-braces

ASM_FLAGS += \

LD_FLAGS += \


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
	# No post-build defined

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/basic/basic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/basic/basic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/color-control-server/color-control-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ez-mode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ezmode-commissioning/ezmode-commissioning-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-client/green-power-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/green-power-common/green-power-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ias-zone-client/ias-zone-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/level-control/level-control.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/level-control/level-control.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/manufacturing-library-cli/manufacturing-library-cli-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator-security/network-creator-security.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-creator/network-creator.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-creator/network-creator.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering-v2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-steering/network-steering.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-steering/network-steering.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/on-off/on-off.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/on-off/on-off.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-common/ota-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-common/ota-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server-policy/ota-server-policy.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-dynamic-block-period.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server-page-request.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-server/ota-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-server/ota-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-common/ota-storage-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/ota-storage-posix-filesystem/ota-storage-linux.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/poll-control-client/poll-control-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting-default-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/reporting/reporting.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/reporting/reporting.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/scan-dispatch/scan-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/simple-metering-client/simple-metering-client.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/stack-diagnostics/stack-diagnostics.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/read-write-attributes.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/test-harness/test-harness.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/test-harness/test-harness.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/time-server/time-server.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/time-server/time-server.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-broadcast/trust-center-nwk-key-update-broadcast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-periodic/trust-center-nwk-key-update-periodic.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/trust-center-nwk-key-update-unicast/trust-center-nwk-key-update-unicast.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/update-tc-link-key/update-tc-link-key.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/gp/gp-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/gp/gp-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/printf/src/iostream_printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o: autogen/sl_cli_command_table.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_command_table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_command_table.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_command_table.o

$(OUTPUT_DIR)/project/autogen/sl_cli_instances.o: autogen/sl_cli_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cli_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cli_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cli_instances.o

$(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o: autogen/sl_cluster_service_gen.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_cluster_service_gen.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_cluster_service_gen.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_cluster_service_gen.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o: autogen/sli_cli_hooks.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sli_cli_hooks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sli_cli_hooks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sli_cli_hooks.o

$(OUTPUT_DIR)/project/autogen/zap-cli.o: autogen/zap-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cli.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cli.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cli.o

$(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o: autogen/zap-cluster-command-parser.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-cluster-command-parser.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-cluster-command-parser.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-cluster-command-parser.o

$(OUTPUT_DIR)/project/autogen/zap-event.o: autogen/zap-event.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zap-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zap-event.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zap-event.d
OBJS += $(OUTPUT_DIR)/project/autogen/zap-event.o

$(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o: autogen/zigbee_common_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_common_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_common_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_common_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o: autogen/zigbee_host_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_host_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_host_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_host_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o: autogen/zigbee_stack_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_stack_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_stack_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_stack_callback_dispatcher.o

$(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o: autogen/zigbee_zcl_callback_dispatcher.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/zigbee_zcl_callback_dispatcher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/zigbee_zcl_callback_dispatcher.c
CDEPS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.d
OBJS += $(OUTPUT_DIR)/project/autogen/zigbee_zcl_callback_dispatcher.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA