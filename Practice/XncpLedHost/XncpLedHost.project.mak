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
 '-DCONFIGURATION_HEADER="app/framework/util/config.h"'

INCLUDES += \
 -Iconfig \
 -Iconfig/zcl \
 -Iautogen \
 -I. \
 -I$(SDK_PATH)/platform/service/cli/inc \
 -I$(SDK_PATH)/platform/service/cli/src \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emlib/host/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/service/legacy_common_ash/inc \
 -I$(SDK_PATH)/platform/service/legacy_hal/inc \
 -I$(SDK_PATH)/util/third_party/printf \
 -I$(SDK_PATH)/util/third_party/printf/inc \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/event_queue \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table \
 -I$(SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
 -I$(SDK_PATH)/. \
 -I$(SDK_PATH)/protocol/zigbee \
 -I$(SDK_PATH)/protocol/zigbee/app/ezsp-host \
 -I$(SDK_PATH)/protocol/zigbee/app/util/gateway \
 -I$(SDK_PATH)/protocol/zigbee/app/util/ezsp \
 -I$(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework \
 -I$(SDK_PATH)/protocol/zigbee/stack \
 -I$(SDK_PATH)/protocol/zigbee/stack/platform/host \
 -I$(SDK_PATH)/protocol/zigbee/stack/include \
 -I$(SDK_PATH)/platform/radio/mac \
 -I$(SDK_PATH)/platform/service/token_manager/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch \
 -I$(SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(SDK_PATH)/platform/service/legacy_host/inc \
 -I$(SDK_PATH)/protocol/zigbee/stack/config \
 -I$(SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(SDK_PATH)/protocol/zigbee/stack/core \
 -I$(SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common \
 -I$(SDK_PATH)/protocol/zigbee/stack/security \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/cli \
 -I$(SDK_PATH)/protocol/zigbee/app/util/security \
 -I$(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core

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
$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o: $(SDK_PATH)/platform/service/cli/src/sl_cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_arguments.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_arguments.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_command.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_command.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_input.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_input.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_io.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_io.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_threaded_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_threaded_host.o

$(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o: $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/cli/src/sl_cli_tokenize.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/cli/src/sl_cli_tokenize.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o: $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_common_ash/src/ash-common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_common_ash/src/ash-common.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o: $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/crc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/crc.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o: $(SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/ember-printf-convert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/ember-printf-convert.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o: $(SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/micro_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/micro_host.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/micro_host.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o: $(SDK_PATH)/platform/service/legacy_hal/src/random.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/random.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/random.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/random.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o: $(SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_hal/src/system-timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_hal/src/system-timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_hal/src/system-timer.o

$(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o: $(SDK_PATH)/platform/service/legacy_host/src/token.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/legacy_host/src/token.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/legacy_host/src/token.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/legacy_host/src/token.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o: $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/token_manager/src/sl_token_def.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/token_manager/src/sl_token_def.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ash/ash-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ash/ash-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-io.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-io.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-queues.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-queues.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o: $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/ezsp-host/ezsp-host-ui.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/ezsp-host/ezsp-host-ui.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/core-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/core-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/network-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/network-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/option-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/option-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/security-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/security-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/cli/zdo-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/cli/zdo-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/common/zigbee_app_framework_host_cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ezsp/ezsp-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/file-descriptor-dispatch/file-descriptor-dispatch.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/backchannel-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/gateway/gateway-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin-host/ncp-configuration/ncp-configuration.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/address-table/address-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/address-table/address-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/concentrator/concentrator-support.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/counters/counters-ota-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/debug-print/sl_zigbee_debug_print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify-feedback/identify-feedback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/identify/identify.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/identify/identify.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-time.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-time.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-time.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl-framework-core/zcl-framework-core-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-custom-cluster-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o: $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/zcl_cli/zigbee-zcl-global-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/af-node.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-node.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/af-security-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-security-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/af-trust-center.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/af-trust-center.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o: $(SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/security/crypto-state.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/security/crypto-state.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o: $(SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/service-function/sl_service_function.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/service-function/sl_service_function.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o: $(SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/signature-decode/sl_signature_decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/af-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/af-event.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-event.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/af-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/af-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-size.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-size.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-storage.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-storage.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/attribute-table.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/attribute-table.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/client-api.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/client-api.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/global-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/global-other-callback.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/global-other-callback.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/multi-network.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/multi-network.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/print-formatter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print-formatter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/print.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/print.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/print.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/print.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/process-cluster-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-cluster-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/process-global-message.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/process-global-message.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/service-discovery-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/service-discovery-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/time-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/time-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o: $(SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/framework/util/zcl-util.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/util/zcl-util.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join-host-adapter.o: $(SDK_PATH)/protocol/zigbee/app/util/common/form-and-join-host-adapter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/common/form-and-join-host-adapter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/common/form-and-join-host-adapter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join-host-adapter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join-host-adapter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join.o: $(SDK_PATH)/protocol/zigbee/app/util/common/form-and-join.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/common/form-and-join.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/common/form-and-join.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o: $(SDK_PATH)/protocol/zigbee/app/util/common/library.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/common/library.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/common/library.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/library.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-callbacks.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-callbacks.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-enum-decode.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp-frame-utilities.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/ezsp.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/ezsp.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/secure-ezsp-stub.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o: $(SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/ezsp/serial-interface-uart.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/ezsp/serial-interface-uart.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o: $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/security/security-address-cache.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/security/security-address-cache.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o: $(SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/serial/linux-serial.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/linux-serial.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o: $(SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/serial/sl_zigbee_command_interpreter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o: $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-common.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o: $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/zigbee-framework/zigbee-device-host.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o: $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/config/ember-configuration-host-access.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/config/ember-configuration-host-access.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o: $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/zigbee/stack/security/zigbee-security-manager-host.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/stack/security/zigbee-security-manager-host.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o: $(SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/event_queue/event-queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/event_queue/event-queue.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o: $(SDK_PATH)/util/third_party/printf/printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/printf.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/printf/printf.o

$(OUTPUT_DIR)/sdk/util/third_party/printf/src/iostream_printf.o: $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/printf/src/iostream_printf.c
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
# SIMPLICITY_STUDIO_METADATA=eJztfftz3LiV7r8ypR/uD3eHot4PXycpR3YS37Vjl2Vvko1SXRCb3WLMJnv58EhOzf9+8SIbAAEST7Z8K7ObGYkCvvPh4HUAHOD86+Djpw//983N58WnDx8+H7w4+Nfdwac37159fvtfbxbsn+4OXtwd3B38evBzn+P2w5dPN29uYaaXv3vc5D99S6s6K4vf3B0cHx7dHfyUFkm5zIo1/PDl8x+iq7uD3/32rrorXm6r8p9p0vwE/7tNq+bpNoH/hano97sDnOynn16uynyZVj8VYIP+DNqmXKdF/2eUIMvT7s/fwTZK8uwwgaLbKoNf0F9fxDcv4i81pBa/ausmK+LXZdJu0qKp4+/Z+j5No20FkiZL0vhj98Nfi2T7Ll3+qaybmEqNGfh4jAAUklZRUm42oFhGW1BB2WE5qSSa03yYnebDOE2auG6qNmnqoPyGoqaJzUBokkixytZheXQSRmikBbjP02WUwS6/gV2+Yx+0ykaFjpH9BuWF7JK9gEkSIbXTCRghkQVtwdlU491WWVgd9AJGSDTl17QI2k53EsZoPG3ToCQovoJCnS/g5LagPWjRoJ4VqouoZJlQe2g2+YzsiLhxgg8weZ4Ga0lDKeN0sqJuQJHApGGrkZOjSymsjjg5SkoZ0WdZfg2oIkGIgsynz28WN+VmWxZIRijtDKWMVFeXbpGABuRlMBNDJUtNDU9stB8EM1llcnQphetvAzlqShnMWqVgM8OwJBNlQCycumSiNIhlRdbMMlaNSBwbSPFCagEpfIPYC4gVdISXSjOjF3K0l0pT2VkYfQHVnHyFY02e36Mfllm9BU3yEHD9qyHXlnKoZYyG3HHKyIAqiz2oeVywNemwih4XPE76AeLtQc9jYi0Jh9XxmNhxwt+TfA8KHpFqRzesekekjtMFq34cX7UFlFMGXI+Pi5wkitfyi4cULCGX8CQH4hQED5MqWdCdOvhjGFoDIR2ZlzHZqJdv25Mc3K4993fYbpg/ippHjYqI/A62fstFcGMoIhbFMGrmyybQa4vsMcqz+wpUT4H2YilLhaSpPROUbpE+gs029769RJkpZak6U5JHqwr+/EtZfYVFqdKwmhuVp+AIEyRQUAWasgrLTiFJwatIG1yKVVYsw/JSSFLqqy3gYFqH1tVAik77n6Pd65iWVRqelFrYOLtlitdPc3AbiFIwA8tlldZ1hHdgwzYslSgFszVo0l9A4AF/KETd1nvN3rfrBT70CN70R0UqmKYbOIGRtknyBSU5Ik01uibdcWcLx2NoEwYeYkfEKRhmSyglWz1FqzRdIkM7LMMxcQqGeboGyVO3ngX1Q9hKHhOnZ56u0+RruaiXXxdnh6eHJ2o7dZuDZlVWG8FY5dLQfSguydAgzjMhwSBJViSDJNIpblKttxk0x7Ika55um3aZlfHt6/+s477QcVeqmFKPIWgMxcc7/FiHyAIdME6viBzp7KTokdL103ClJXXWGCOWFdt2+ujblVYvRbMK0Woz+z69UHCuRUaQHjVQrcnoEJwbJ0lTbw8VWqEv8Q5TeOWJ0kSSgyWrfKiqNIcY2oqmNhWsigVJxKIUw7YamhcryGzQCc2MkaNFLDQhfQ1lZfjmVOrT2XX50Kw4SZPksjmGPsJOIkqTXsCZjKWmP5VlXf2H51TazhHBBy1RmtYcIf8oWKb0zHrKgtWbXjo0/wrpkDutsJKma6w/ma+bZYjBSsVuJ89uUtdbN/S68N5D+nJRe4WVZKz12djt5HnrJoN1qYf+AlEiAui/QQ744pbJSwzWJBkx3ut8WDBU+bzEiZaJEm+rsimTMp+TICvTd8N8ALmHFrnJkqoMNKPtiOKmyIuaGkue6ibdRE220Tj1dmUmCpvgVkGTvQww4QmsdmIm+CRVEpwMlTHBJN3cpxXx2V+hjcZvaRW+XamE+h3suESyvjdQBkwUbKxBZUeDDPovlSOpGnmBZVuemU6BSLrgZSJi4p00o5LJx7bQnHlRNr0kNEOVUI2xJTQ1KkNv1A1NZidmgk8HFBHfnuDEJPImGM40AGkwwd0jtIHI9UV925AkD3T2IaWmewKCU8/DSWd1N+for8EnTwMcCglkqIwJJvdt08zQrndiJueXk8fHqErrtImW6Sp8s5YJnNJZWTZ5iQayKEMeQSuQBDi0EjWoEGrBNUI3PZYgL4v90Bbk25QAbLf7oU4F63NOU7iQDj/1SyV6W7aTRaafTVeChS8d+V9eEfBuX1MQNb0FSDNA/SVpXS8Ads2eieVQaMhNWFY13tsmLR/d5xRE2dbCPCyHQr3vfcGFloeehA+Gw+1PICcn1D57McEaI5EQbHxEBUFV3IvxVp/kdsQGFGCdVn7GRgIJzRD/Fcux7YYeTp7vhk7W6358zTjIYI2FwHcjwkCmrYJkn3gl3Ly/fXs77rZ3U1aiY98gzdsiydvlMJm4L7Kpsxrfe8907rBraxOXIkZEY8okHoqa2rPBGehbXjNQYyRNMGu+I+fOJn30OGFKaPFitLS1Tjzucyk1RaWE6wTYY3q8E8gGC2H5uAB17XVPEtOiS0UGfKAHgcZ963HtynGgyFMEfO9YcRzUO1QijQps0B3HQDwY9Cki3scUjsjIODKsmMrjuluolkqypNaZs3WsUo2pOlDxeitOWUYVE/QmQ1pl3tufyIiVE26IJN3OcYxEL7kUywwUBVzo+NML4dYZT7yE0S6BU7cet0hEJq18M0Tg4Hve4FloThzkPSKv4zbPQ3PgRgviBhq+0xdnLHns0Cd55JnPQ1CBRgc+rQ3Q+JzRRW106OYjt2xlqWjb3haVlD1dRe7QNdtUIB47dL02FYpGBz5Zl9MDfgWg3PHxfgMm6h8miJKHLPd45IRpxRA45sBH1Y5SriCA9zNnnowgYpJSWDYGRLYg+ZqG1s5AyCQtz4fLPB3lafJQOw9PwXRCoM17q+RxDq5ntk0mvi3CbyA+ZNVysQVV8zTexfV20jS2GHuXY7qp5ToCohLGTDFiuoOGRkKJrGB7yKIs15aiKheariWytMvFuuCErYERpUtYhNKXSkVWc2GdQQplscjBfT3eX2BKmAavy6Y6DXnT8n/atJ3cNsVJI5zUT7WxBYoZzjFDKhakTq16mdReKtWYo/WN0E26Kasn5XnK0IjbgDwv3b2Hx4vJs4o5sdMnmTRt2JpQUrSuivt2tUor3aog5ySdaUHyBi4yTzBWMZj0fUIJZ+ktAmFRsh5Rknuj83J/CLa8eG+bXFNWVHcPZcySIm92jE8KYLudmgz6d7qmvei3ebvOxJ04uVz2dR9pBqG2uQzui1SqPvquSQzVEPfljEkx+BeI4gGBYfMcJ60VCCc08WG4HE2NOy8zXDUuHRCUY7ekybGvuum0OO4VuLrdbksfm0U6amAlxyoaGjUoyzpfK5wshUFblCphliY5XRceGiZ5Qk+vUXbP7c1XjURiLIrWqjaapWxA5OdKoh1lVr4J731ytuGb3O+tUdwbcp2r+wpEVd11rJ/th2kn2rCf7YstFe02FOJHAcmdNp3RUPrm4Tw9gGEqf3pRszvI885Sh9NFcK5PfL0NhfD7Z6lYFwjq4DJEYPXtZJ7q5OTGchYatclnnGs0HiOvHpf1a7F7clKnAru085S8kxazYjXqqX9EczYzasDUwIzaZZmpQUnI6k7vfUXMMoQN6995yBq8r2rS6vtM89ZTL3b4xb33s6+O6+iCTT+PGliJsSheo83y76rPNSIoWRuMDHy2mUaHEeK6owRXSbOMFOo24jxiQFspSSOpF6K08Gz6eWqMlRiL4jWqi82CH9XZM+2egyn32Tq3mrp+5+YqapZOom4neuvQYR3tl3bPwa2D40g0kgfCJRqg76Sj+CaztTVKLx7K1qgyJtM6L+/BfnnzFMzoJ5BaudkFtd+n+qVUnBuhEDJHqz1KAu3MZCYMRUvD/uiaDMO88wwuWsUwHmMMXvJCdzGjLiKaxpteeR95s8sUuL5FjrGCglRBU9TD1rEWdbkrgmYFquYNYf+2muN4GI1SrKjJCuns5HmoCdIm2ZVbEqBlFnK8sOmmnCaQTzPHBhN+ZloQN8lvHgMFT4vj5gjPalnOxWonyawuw45Hg7pUzSuKfhCeHS9Mu52FJ8ZIsh+tyZwfSe99SpKn3+uh+5RECyjdXHYXJh8jiTEj1vEYB7KNlmmdVNkWuT50kWS1TnQUeWdUhoqC8g+6pz2K7PNWtXHp9G1upX7msLxt6855uU+j/Ok07i4g4JzuYUQvVHIsYaBRsehkIHlAV5HzPXJXsNDgL5R6tsX+qO4Nti36QJJzDhQibe1hQGxj8/V+VSvX246U1c/euY+aTvqHcmKcSq2TOTHTjI1vIHv4xdhO0bXqBlcOpdoBqznc/fAdA0aUxuqDbFHA+S0pv6XV02ws1ZInSYPVPOdbnTbHT7NEavhm1kzMelnTxJqmyu7bJo1qLzH0NOgNJJqQhEYXWM/NcyfUgOocd0YEoqO3RPi9vzxD9wTBNrQFgxny0ibJbdK6nqmSGVHTtNq8ySK6XzgLOVHgJMU5XFExtVFn0yGlCLkHwnbqIwiPJjlepAZN/Nhsf3o2YxscEa1Nmx5h7oH1ULKFcTHftD0me5I4OtiPEMwcTDlhk9TmYqVNCO2MzkWKlTVJrDvtB3k+g88k5icRqUuzbB7QWf78ZIeC9Y3csMtd3sjVOQ+AiTcgC32s2/HqROnQ8vTithYv5bPbQ2ID03cOhjKhxvb2rETH7wgr7O0ZGPLSpsnN4exHiI369YmXb1eZhzcPdUh1koznjhnYSURazh3zkR0K1ly5zEBx/I7ZqJk6Bz2pUAPDdAaKnDA9w3QGVtqEkLHIXEKcg5tEpINvl9rlX+KkuoB0Fj2dxSwLLeoTPUFguqJk+dFm8CL4AdZYCRgGdkWYZbrVqAOtziLLP4eRP8Zf3/CXF3+eCXG0BkanRm033WxdgKatkEdCUkqDjUh8XbtMC5IptJuuwDFWUNBy0xXzBXbT1aHuVoHU6U7rmLCYobIon5gRp7OK3TkPzjG9sCwlkrWW3RUkEqFXdYLvSLNsRbHTi6DqaduUKEhjM1vdizJNGkBwx/lhzestJtkyzcRRlGng8TvH0rfnKRGrTxXKIC5xIPgbMEPConD7gThTRusatPXApaRMYiB9zVg6lvl5FVyT1VjUacm4MMv2IcPOZOuQOgqhiGhlgfbLNhA2K9ZzKXNUvnZb1ntGVuGMNLz3lQENp6Xduz1o2gXFcoGj8m6rNNR82u2NQHrxpHQdW3IEIUTt6/PXabl5VrSPUe0pkvoEXVGYzl53cFK6N0GohiNGwyfhySmEmtVr6G4kCrOfPZUXUiTXUejCtw5XPOYSCitsUvk4C4pQFQVcGAsMBXF6HPFMgjdgsyZLZ9GkRKQW1xm46V+mSyNclrppw2wf7njJxOkcN8CeuItvH26YohyH4rSH0+6WchhTaUdSKk+bJcYOZx4PafICzUecsCxl4vQ5zkVOn5U4KM1AUCJSjys6NODvHcBKWIE2b2bhPSFerwydnDkIs7L02CGAWXTZC9KbAcMz0uJSpegHMiXNNXorZRrN1/j6R+i5cCjOiONMXUMl0ohrOJczOVF9tzMu1wzTtlSesZ0WtSDQPVa1sdbLtF+0jd03Vt3aDVcfksu5ep5OJF94Yowge53Tx7r6rUBdJw44WWOnoLBDocgulgvXPHTnsgXrHTqc9R01umwBjzF1WJucZW4yMipEWxBwUB8QHsi10/C+2rKxB0yXMc/uKxDIE1CHOCM/vAcZ96Z7uN5AHWUG0iarhn9zHq9xwBJsg55ByMgORJsxD9eYpJrVafRCKAJasll5slI1Ns5Jtwhd7YycfXrVs5QMhrLgg5egpZl8o3p/gC50WwKSh4Db90NHhIFgbQeKkGdRAkvXOWMkXJjQ7gOGWqLNTCu8ktOBeb8XMH1qDmr5k2S8oVY/kGmiDXPjvucbQ0mxIG3ajKTpZ6RmxitEW1Lw0nJt6fS7rbJvM5Lr5ekzbMMcxqvbm+kwI90qz8rATVEUJaEsZ4YDBYc5dJWx24nTZhh8hBFFaTMLaBLJ2I2ZRjpHNDMSFaRq84WNdy6SRJQ2sxlGxqEw0148F7+dOJNePBc7+aCtG0V8aLk3svhVw7jIsMlPxbNPN/foIil3cEkW2wl6fMT7OIep0wvBsYbwidoM5MjNsRzz2p7UZbAz6ElFjh8/85db0QFShBHD8hQEadHaPvhfw0lIUTFafXTQ17Y5aNDeyvRSZuQJaq4lLch2ZKCSd3xjMk6x0jyv8tR+/5KuE+ZIkhS58wkXJOl06TkY6XCpKvQecur/goTAh5Wjw2kOPhpcQFpH0BwNzIaRMsHnPiuWWbEO9GwKz2oga4pbWTZ5CfwH6RNoMWKmGD01IV3NBF4DYVN2xv3XNKL3zdJinRWhK1QucIplskGTa+gOyYqZYvSQ5aEbWS9DyzwDeZNWBYD1vwHJLHPNQKIWT/yaxSz8ekl6vFp0kfEpCT6kycRpMaxAsSw3QV6CkjHkxU0wXIfyu+KZrUfdrWY5suIJjR9YsXxgH4ly8BTc6uLkTHGiT28GZrSTMsWHe7Y2MCtRlha3cIs2npdi1SZw6uMC4wdrQ+w78tyk8iY4VuCXaJ52Jkia4FWXbZWkUVW2AS7288REUVPMUOYoK1ahTX5e0NSmBfsCRVheoqgJZryfU8jdno6gQuIUzzyfYfJmpGjwmWPS5uTo1WXvH7EBBezOoRvciFQ7vvPodUq23Z4frK6pXS1co3h3Meg+NRQTy0TZlUsRglg2yYNijuLh2LxqiXalHHF+0mq4QXw5SHl7v6Ip2ZZ9Loi7hwl1++ECO0QXAZ5k0KTPyrc9zRt8Ej6Iv/KLIw034ddl0m6gUVB3xdhWIGngDBx/7H74a5Fs36XLP6Hd/w4zlgkE2+kb5obyKKRUXJ4u9W96GcoVsaUEqhQsN9D4bDa5X+kccC+aO7HrOLwmB3dQfg7u05z7cl+CanlTbrYwxz3avnzCI/bmsM5g4voQ//2wKIv0xdEh/D+YZQuqRsyBuyF+noL8e3FxBlM2ZZknD7A5jAio68Pec/4QqvOfaQLHIhQqvSg/w/w3KH8vG3a1Mazl10NiFNbtNq1enB2eHp4cLqKTk/Ozi+vryxNmcH7ZhYSEivrty5j9res2nDLx15cxZYh/O/j54Pbt+4/v3t68/fy3xe3nL6/ffli8//D6y7s3twcvDv7+L1T9m/Jburw7eLECeZ3+fHdw32Zw4inePGJbooZ/+fs/dp9v8YoFf4V9pW3KdVrE38G2Cxn4s/i1xfFH+tvsoKqJP7tewodhQpqghmuBhJz1ylNI/9JNocIf0gKdIqDXVWBmdKpAMWTwfRws6fdh+kzGpH+zV/iOp3qZVGS6oc+oKjblss2hxfLi7uAlre4X79/jjz89bvKifkG//ubuDrb8ptm+iONffvmla4WwcHFdw15L2nKK7Z871NdIHeNsUL3kY7bEv7fJIZF7WKdNuz0EW9iMF9+T/KZvhGV1yAwAh+skwQDb5YZD/O0dbJu4AWN7tUY3eGGfRWF1iOjD/43+HdN0fZPuyvhbrBzKFWoB4f76s2tbpkfjnds1PlbiG8zOOQItQHF5FQmIB7H0j+kmz+4XSOMLvAu9kCXq41pK/pYtofBs9RSt0nSJrjZKU+XpGiRP9FXeBagfpHIGgQulWP3eTga7nSxBnS9g75dK4P60SB8BNFLSQRIyn1CF4K4hBWuL7LG7rSQlgt7E7sfqCClZlQz9r5MBuxf3V0IGV5GqWD1htMxnUjyb3tkmpFv+wB2yG/0+fX6zuOnesxOHxr59kUfP+mB1U0mIVTJM9QCT5KlCSlbAuRt2/louYfdnSW48uy1q8hL/An6WYQwTDZE6TSwS0IC8FGczmARPRLQk4lQ7+PMgdwZbCjTdNr0qBgCDFGqMrMiaEb1kROdl+VUUQzsYWPVa4R57kKbEc+fiAZqd9PrGMBUdD7tHvBZdqO2hSTKZXopP3nHXRVemlmJju1EfXJ1cio7HQ11sVeLnNQJ+TjfI6yv9kcdAsnKEf+0X8gu8Ztj5s928v317G9+gHaO3nXvAps5qPFJkuy5uDgBVZZ33G+yC9BTIMH/zHc2nTfrYTGWmNwNhfaExB9Rw3DTMs3Pm18+TFssMvSVR16b5yDtU+jng+FgbFgg9DN0aEoNDNVzxaOapK1bZE02Tz0OKY5aFUJvIg01q4teJipRusO02VSB5LjTpplU22fBJbppRr+lxWe6na4lLr9dShSy6SqAZoOGMJlmjPJr9vAJoR3IDEuyE0Lsv6WdZwc8RmdrNMtrkQSvb1E4cPZ3Xz9AfyYxloRYheqG2H7rIY7XmuRagWpNtPMv8/PaKae6s2LaTXUWRt3lAe4rpctHtqdtgICMRxQi3zG5aXXQk2+2OGeZiqssuf1dddrlJdVnmLS0z8vVsidHVs3H2zL6XsADGDZ3LXOrm7JZaXSPtfnfND+fepQULWgM9C03tq/JTFpoog00vXCh0j1hv+pzGYU9T7JBQARlGZiV7ADmm0jmZp1WUppCTdm2rcXbPwKE1h0c4tPZfgrwstIdcDVRbqLZpjJtBlzmpJk0jRc50c/L4GFUpXJiiSybaQ8oABjnf4u3RFdrX/KZhdCqgHoBpE2ZyOuTOU227Qci5yZKqtOvHPITRDC5DcMlrZLkIAN3fNe1SBQrx3bbMXPcBG6wz22OgkRP1QfMhE+WUdh47KKYm7QBoHdhlrp/qJt1EKGBqZQrRLXb751NNMyMCJLOZZKL3zsbgPurSIOXuNy3wb3h/2QkATp7o3vUCJI3GMlaA6nYpGC6aapECCFw0ociuN3XX6RDJR3ShUYFi/jqMG0qrXP6YvgPjhOFMwoqB7PUQJxDhZQ8HLLVxbfSChwOAdfuSvWfjDuLGxLKZi89maAIwcWHh+pEcd6v3GSYBunN+F4xyS9wI/EDYqmIXftCBBwdiywR5JLiQ6PJby1+W9vI1gw37BR5dF7vC+mbL+nz5Q2WigRvjyuMWusCMLpg0QZyyj8Y0NEalaP24S8N62WmbBUNOs1HnpYmek6Dn4so/7EXoHiS61pLkHf+obrfbUr2CM8buPe7cq0SEpFSth2FdbF9qFrBDcXbmO3BeHH5x4M47gopuoU5VOQYdCtZe2Zy/K+/86qdlTwsIC+6kGuHRYLfxQ4bnqloZoNcSGy6rNRDLBoRB9VpwFzDs6Ew2I+Xuzy5FnwZ3YM49py8+rr/6duJCfAzbrV8NfOaHX3zA71D90GXw3IaBAaBfMIf2xN4tEC4aOKlwBNdNlUrgMKAOqoV9vY9Kw/3iqgI1MDqUCIgcQhlB6LowHd5hkV5rceodWjIcC7HA20/koqjLLtgIYls35WZ3c9C7gHVe3gN75v3darCKChqN2wlktyNp33RleFY1zQJxz7I4saLv/yE/Zkd9cUhOBWTUztwEcwWD6cmOCbA0TOkBYB8FFZ8k0qtD3TdLFWoAWzHO1gVoUHhMEiwaA3ffFruQ9WGAbRjj0DBg5dLhOgj22rALgksxrFdVHQB+OcGFwajngQZC01TZfdukUT3i22mEQzfJPUJ5KJ39XpAUyJoRnPrQhjt6NcqaDINhz8PerKL5rUduErGVWgLdqZe1MkQgV0Zl84BMH1+8BDhrdt1je9Z8+DcYrWHwfgd9lNDWNtkBuWa3VueWeAb1pq6zejtAWu3OeJ3JsMzqpPyWVk4mqgLRbfIa4NnXBlqL4qe07dnsIKxZuBFwk40WR8w2oxuQYUHkcSotMisjgzpjiaFbXQG9YNgVjAlO6pDbWLb9Xvsuvn33UJD4cIAdCk5l6gqxgyFOBnReNXFVEyDQLeLIeKU0AmJdmLH7zNO58TjAxCOwLosIZM1o6FrJxROyA+2S2COgX+0JWOvVSmKVovfcIlIvTr0O75JQJEO3WzmIU0WwQHXTmmy9ykFMV8EKFOvRiNzBYC5ptcDolF2NZEpH4ttjC0H/a5pdI/KyE5w5H3xNxuycnstJZyxcJ9sqhf8+sYTCLyVG9MaOsSKGEHYsdofY3RtOTNEsaY1jGvKkRwY72xZsMqJ+9HyvMxr9QN8UN15YGYD6ZWq4YNOG9MvSzEZVhEk0zTkVvdAHnhBW0hSSixFol7l//t4g++jD19o4ktBlxnkHAcbMEZhYYOaZBwG7jCHkEbXMYZjgV+aZx956Gc2pCCVlidOHfLLNz0VlsgThAydZgpiYfYqwi+Y52QCJdrmtcq7NrFxlBCbjvFysJPPcu1gz5nnF6EOWCKYj92gkH2MUIeKOcX4xMI45ABfBxji7GGjGGIA3MsxnQu1QHr4Q7bB2IWWs8pqXYiSOrzaGdrgJz4heObKBGbRRVXFTJABktQTND5hqgZ7ljMnrnPhdufi+Xa3Sqr92Tn6l3DZqNwUbUHwx1wceeXage92N/NEKl7ygi3mRnylHeYuxw7LhtUk3ZfW0ewsghz/meal6MsMSbIRZ85BVywUKv/AUM08+9K85jb74oEKgmUbKoM5kJgk9niByJWLFSBo/7wKT/CyE0Hg2D+D29yVv8a8/6iO4z0afN3iPhGJ8hGr8fYuWNv/Wq6Ne/61R3xqlO0mw3zf4mvSPqtDdu+OHSZV0YRbgj89olG2TLv/etPwPaZifj6/foxg/L38HVXF39xN9qPc3dwfHKE4R/JIWSYk2uOCnL5//EF3dHfwOikVyoWAqFyajIZq0A0wgaJh7m8KJ9TaB/4WZO7SDXgBMBP+fRqjbSSFVPEinSP09yRVJuwwZbB9sci7kB/wLfu0ZNOnyN7SO0Mc8K77iL7jBktqQsOmDlkmpcpIVgUscCfAylJFWvEoZjbDiVZIizI5XGYrINp7LMYgGFK7e/dd3d0g2CIYTQswgno5XIarQTl6FDEM3+a7tXleyYElehY3EqvLbDUfCUHkVNBY7y6ugsfBbtoIUE85Lup/2ETQP8FcSwLHGIUBfdOZD3M2rA0z9zDGebXcATKRB+uWncLaGMpSLk7VBrUuluSEfZ4VIUzBFby/uKnNYw2aD+TBWVQg5TACnEPBcvKywAvyXQIhN5RV9GNLMu3ZkYcJ8CxlEEgsrIEAjkoUyCy4jZDmGAdf89ztpKLs5xPguDbWkRiOlzSvQtyIZHzd1GLuZJQYq41gwvVnlBSrfSMy9OcUFKp0q0GMgWYNQkbZyXIzy3vzci1E9cTzkZFgLB266+3nd2f7Epp6Qi84Qo5kUWaGFp5FNkRlWsXZmaXPcRfEaNBGoOp3oX/JWbyR+F9HKhsQutw8qTGQxKzJMfh90+ghOVmT63F4qiYlaZldPDIAPQlx4LCtGHIIXHYnR4ewUJaLoUhs9D9AYTurKy3Cyi9imX3xZvDevrdaWDQvgc4Cx5cPk90DHloYvbZDYD3bNpPRFggtvaMWFQ3CkJIn9Z8pJAuGFlMVsJA1H6IdM6cCkDDPiWw8yIor3EV8/4cDGpPs69laqj2mFjeaop+KxeJCuNT+MDenGaYcz11TvY+XAxvk0LL8kUqjnOnHmtMN5Rp1xcKi3x17JhxDVU7ZOMNIfpgvwUV1tFTCMD+vUE8QQsa60WKzn1xEewLj7VdgewEdhNNK0PJCj2xgoRGW04iOCODHaBZm04rLL7sSCBuy0okDzOslXhf20IqQCe86DpgBh0mdH1EojABtrUYggbFi1ZupTaIA8AOFDCbtHLaz0MIiHO4s2VGOobSl4CP991ZaXCsx5NLMlRPP6GNNtKeyyO7GQBKK2oiPBceLlOCg5yxdDlNv3J1/2qBDx3IGQn3OePn66PRP31aqPUduZRZ4aHHMJFGheJ/n3bdM4tNJddscR/+TxMarSOm3Q4xL2jVQG5KYf+nRLd9G6e9vMTlsKMO8M0TsDxRLkZeGXrIDrnzfYbv0SpoC+mKYpXIrbT7xSpGe0oCcLz/1uMhMO2IFRf4FGMnU7ugKE66YmhduSt7IXoI+o4cBtCPacF49jdaTdF6ge6A6vABGmjty4DcGeUVftRha44NpjfyUPmBrvo6AnW1B/6LP/MI2/f7HVvMCocfXZn1FLIj6Q9H2P/Y79hAp6Xky7SXHsu0GWw3lGqqbNgexG7NfjkKNi3KCZR11kWPtQuU4SUZE372/f3to4jN6gJwKs6+8tcQp2q8NkU2c1vt+T5TqbL7isMSIev+3eZBxAuO2KYTjqn+xAiEFw4tN8R7ctm/RRw0iRkOGze9DMOtHYNVRqheb+UboWvjNs07VMBrfBNsIC1LXWbjGmR7cMmEza2h0Ivm81di04qTSHvUjdHUZOqvmO4lBwBTbocoahZCaXvWjt0YUTbTGiyNRdaeymCMquNDdK7G0KtxWAsylhqJjeEjbSzrT8Bb6ik2m3SZEHm/9HGWJJV555jEW3cYtlhiI01BojHg0ARA1FPqdlV8Q4rcYmnCi7NdtuG0jVnVt4uc6TC7nFrTXS85Kdh3q0FdJAo35tKnmXy0FynukcRwuCu0wuJQaNzlwulrjLFXKsN1ljK9vv5NKaloyupXe5nFuRoeRdLtdWZCq4y+SlLm2G9gpAjjYj+wZYtxD01Hn/Sv+4ujA99DZ6zGWyrCaEsYLQ2n4EvHghqwMJO/leRNPHiO0YDDI7ENF0EuAJGHsFyDRA3qk3KjfJEr6XTrzxJ/RB9Kyw2dVl5g1im07vup/ovHUreSxZWo+GDy7/MKcCkoetjcqveBw7WPl5Ny67OrOoJqlcU12ZqCfQ7My+lW7TX5nn1e07LfNgvOMKnn+5Xl0ZNu/gu63t+XfwPTKb8T43/36+87nN7iV/C3WMBQZwPYHfRQXwSWzGiuKjRLhVlCrEhIVqNINXOHoB8hE23GmKiD7o8VFFvHHkYZ/d5p+Z7dndFDOzP8mDSDZTGdhu7aew/gFp19ss27xdZzo7oTolYl8HtoKUtmEOVr0hIQleuQtYSYoZc1DxANisq+lSjkYfqnCkHVm9ZqGtbeWy0lXbxgObRpc2bK7s8+j+Wiv36Hrdbrfl2MahjhpZxFgF763+ZQLcW/BkGby3Y6minJrzdD08i0ZN3sr32aC71/fdGwFBikVIj5VOgcsGROMXm+0Is7j+WYdgHI5tcu+9OdwHYera7QWatt18unf55dlBBuldvrlSyH0PnzhIA7nz6m8ElUaccOs7DM9YCe+t4uUSnFrAdAGeQWvAV2tBsYz+WVqukaTq5GAjsPp24tYYOLxYju6tLfDwrnPAGHX72cBnG+gCnvir/g7RTXMdSszCeavlPsyLs9E34Ond6NsBOzZGCVW/BklfVU5D57Dmn8FQOYgL5L+/9NB+armHG355DuMOG1jNny5ZVDc1skixCOutx/Dh5VzHIiVn72MSD+44Lo3Q9js+cdXoNEapW8czGKugfZmkkbYPsKbyWFS3+maRYhHWW2WzwPjBtECke+wwzJ0HBTVx34MCV5VO3UvdQnyu94e1GIZ0j73vgQFHbDEIaDGpQaKOCIV8dW6nlFw8xPRW4Qz0Oi/vQRjWPHQI8klbN+UmouFwwqheKuIZNGAhtrDHtiyJW+xo2AwhJZ98GzlDCW7DmlYhZh3dvL3yiO6tR10wKS/vPeZ9NLoO1rIFiexiBbSV0qdJ27UYLdLmLj9eqtt23hucEVQuDg9olGUhPFRft/pwIyWgeOBVbkmcZidaPIiPxp4mkEfjsvGHg0MIMB6YuRlRePp2M5lEPsvSlc8OwXfN2Y1Pg5qznbWULd2eFw/isT3ZU2IQ9jFiE/sjMrrFPgqYfq/1XRIn9YvQXC1EXLgYIcUM3L6tbFTOaJnWSZVtkftPF9vT4wmhQoIHZaqglX/we3qoEOKnoRiXzffaQqlDlxWGbb09gw2VNWjSX4DHs1MK6MWxkuiVIsYSZG/NAp0pJQ/o+YY8AHMFujf2gmact1NG9e59W6jD9zLAiKQ9Dx9iG3QfNVSt2+c2sawGgzF3MgB9Hs8mWxQTYZWt2wpYb49I9TmA9tBwB5jDL7NaVn4s4Mnr4poaBysX11t8c4qB8LKWIxtFcC5Pym9p9eTMT43ogS5YuZ17dhp0O+UcksL3Vh059Rg+KDVNld23TRrVozF9NYgNkPzSg4YkWPtiuAPzStLlPphA0ekGmLgDmmfotjTY2lpJmBuP4oHWJq1rxyplIHwQavMmi+i+qhMtEcgDORcXbUzKyQlbRiZCzrGwxY4Fx9OkxUN5IYife+9PQz20tRFIj4TpUbRHvkPEIOaA+3Q7humBMnLpiJAgF44ciAdSrnw8UkF7x650WAwPlDq/DJDnDl62mJkEyh/BsnlAHhf+aA4BfZqfdkth3vz0c+IB4TYgsz287hh1EH4ITUSF0GJkHBpijNLAbHXhJgMLYAN7oeh2L19pAztw41F80HJxvSSUnLwsh1fUV9nIC7E6dDqEAOO/Ay8JVLDx353mENDbCsKBnNstyAkD0oWYFMyryehAjgPxZTI68PFIBZl7zLVZF1YSqL34nNlfwZA6/y5gURd9URdOiyTqpz4B7KNaZRLQ5uzC+shqjDuDHIq80zSroXdP3UkmwcVkH2Pu04yXq8ZtOhzVuvXE6MkROVsXoGkr5OWQlMbBn6Q6RI63HeyCwNo6IgvsYgW0J0dkEdnSEVmH9L6qmzogejrYKxyqljKJGRg/q96dk6XLFMXykyB6WqBXbd1E6K0r651nlqcI52MZVT1tmxIFWG6ca1rE8lvd1tcGhvXsawnKlteRnYjl1afZZancM5TA+SQJWRBnPGD9PtKQqgi6jyE5s4q6qOgNlpqhHGJg9L77eL+ciNigycc8hsPEaOG08cjw8rvpSN2JUMzLskD7chsoOCvWrgocxQ3a2l2fvbZwP5LdssuAFyem3StayAQAxXKRoUl2W6WmM3e3ywOJxZOofuzaERkmrUufuZ8+kWdF+xgRgdZERRA/++/WdPzdsKF6jxi9n9jTUoD5rkXbjiKC7GOetr7AI726Q5f9tblKmAs7LIiHqsKgKB5hZLFoF7gJML7Y4RkOb0FnTZY6aU8C5YmlAyuf1xXTCJcTEjDb6twxksH4OTCB/ZgMNiuQmBljLLshjMeBtbszbmaC7ehJcTzyw9LNjewhQR4oxDhix08G45OdKy2ffMTByIGaBMoXS3S8wd9rgFWzAm3eODGegPXFvmPiQpXF8MULiXDSXw/ga/6y5+KJRZWiH8jE4zoOK7E8z7P4yoftTDaE8czOsfGroDyzNHdYk1P06bTG4TpMt1KcANZU1ALDG7Bqk6rH2seCy+V+s/qOsHntSa4C+/K5Isj2lBiAfdQQfbKt33b052wCDQDsBmU3qIq8YjmoN3cBDti45+mw9elQ0gFbHI/q8PV7RrrJyGgUbYHFxDCgOsALpVXfbTaAd04HnWf3FTD0WtShzOD+2P5vXOQE8/5C3X8GKB4qko/pgNdRYAm2VmcSMpoDSN+czRudVJt+uoUQ3IOW2gtDFs3LpjrpWraVzOTfj+c/S8br0GY9mAma+f/AP6v3cuiCQyYgebDY1B+6TQwAPTp62JxhCfz2N+M4hAcc9CmL8Gq0ITuHVJv5qL/f93A97we13TNxotFZP5CJrzV7ZaAvRwwRYgHFhzFMET2Q8s3IpJUqGHly8em0vq2ybx5o9Tg+ubVmDgTqdjXXQKc4CshKy6YoQhgWQsUHh3U3OxSWcdrBeOJlPY6IEJ74WBhsMk62hpve0ZIHegKaJ5awybpSIxCe+DiMdEMQvz3RldUOxl9PdOVkNuxqD7j6CQdrhsYkIpwsUjvsJsamF6/gzT265Msd4ZKtgwQ93KI9+uGi0IvXsQaoU6swdHvnuNn6uGvozfhEfVJp9ofp4iVidKwWYXl27AQAD2S2D/orRgkVmt17b1b0tW0OGrQv5LrQcXiWXGh/C7JZa6jDrhwxGRtZlGe90rS7ayHttGZHwURtnVe+gOA+hLjwcGdQVehl7FT/8onAgs3vzsSFhTMDkNYRNIotOTC5nVjcZ8UyK9aGD9jwXAYYbozKsslLoB/4UiDDZHfj8dTYuNkJbAYgbnbI/dc0ovf70mKdFbZVJgdy45Zs0HRt26nY7G48HrLctvH0eT2YaiBv0qoAsP43IHEa/QdIHtjhV0ecWPUIPti06DLoU2I9BMlgPPCqQLEsN0bvZ8l48TBOvNamnmU8n7W1Q5nj4RlPw/7ojGcB+0OUgydrq4bL78aEPjRqyWOX240F9wSvJRcRwwMj86UXz8Zw7SVl0ke/xo/umuwa8oykOE7MKvBL5NZ+BAQnNnXZVkkaVWVr8BQBT0eEcOODoKOsWNmayjyA20YC+2qGHRsRwokP70Vls9vS0VIgubHLc4epk8ntzMJlyuTy+6it3jdiAwrYYW0b0ghaCJZuOpzCnGtXDVam244Obg14P9BqTxhmj2UQc5XfIhS1fEIHhYsacHRmNdJc2rB0odLsMEb+F0QvvX/SFGaQHm7knmFCONSQhN2zC4MnHzRJs7j7OL0bTaL4o+qzuGDq3ZLzrPiaLuG3Fcjr1O6VJGjGgCor6/ixSLbxX+G/3qXLuBMiqk7cAN1ug1OhMiaY5OlSvPVmTQlJr8Fmm6cR+hWxiSB+LMqYoFSlYLmBxnOzyQOriJM0YEVn8I+geRiIhOL+mSZNbJgNM+1OhegjxjiOL8zkC6qunKBu3t++vY1v0Cz1tjsHskdLN3l271o6AoIP0RyRqPuyJ23D9tTAJrTxhZena5A80SdmF8iLzS/wA8gtEcm71g9ZtVxsQQWnD/xm88ofkguvOsszaEAtcnBfo1/gfxbE2POLF+MXdBfY28Y79ibdlNXTgk7DPiq9fqqb1Lptjg6n5L20uHNwx4dfnoQw7xl5p929Gt/dbw+lF1jBaJOjAk1pVZN6Mjov+jD4zNPsFiLcWXkqF+M076959leu/UGSZ7P84Q3vHDtjUwc6Pzi8b4w31MzdYqkA/IZOR3yMwXh13w3qHodiztc90BAwHvPdZ2Pt7qAGLIbfLis+Wu/TRnOwckcc+bzB4V1Eb9SsjDSV6pwsSa1JMVvCaT1b+W9GFL8/X8uKZSgZUEv9RXlvNbnbTfRtsg0CL3gW4DBjjOKSh3m9G7Be1cxdhPQ/NOaZ3zVBoCZG+wWKR9R/jBRDEzQLqvJ1CvtnhhcQ/Z7V7bvFzYf3Hz/8+c2fPy9uXn1+9e7DHxcfP725hb+b4Hx89+rzHz58er/405tXr998wptd30Deor/9r/9py+b/dKNf9JCCJTrzIp9NhLz579uPiz99uDVi9sdXn9/85dXfFq8+fjTJ9uVm8fsvb9+9Nub36vZPxnm+vPpkVKYvt28W//3qI6y6P//h7R85ZR+b4JD8Xz69+vz2w5/VVSeJgtUd/CgrkboL/YF/B715QFuXusll86E04UaSsCnL/MOWlhf98hZtxe6+HrbJId6hrXCJS/xRmeZwnRYpXBin78EWy2a11FTSjRUdBujpdgg3waFLdZgs4LxVLEG15Agk19czyX98VDD4j/84ljW9ABx+AVWB37gHeb6naugppI9NBfZNYpsuATTvEo4HPXOYt0KqdIEd7et9UUEpNtl3QHbJGA519l2fwgZ8TdH68RCfhK4TtgOIRMbSqrprVDfL35j02TEh260JJXS2purDhJZRR/amqa4NLcROHf0FSFduMyhqBk52OhqOOtFf6Le96iksLyNdKQeC6INsxTCDlvwyAtWGEzEgk9WJwkUGQ7/L6qaH75msijK6b7O8yYpIdVJmBFJbo/wForRFW6MjeIBsz0Z2uqQFA3VRo7tOqyzNURAMaASDHM4HsrWjESC0RJPUBkS2rRXvalyvLcCqPyQncYfZMoU/np6QJrFsDsnO7RJVw/IQ5ThcF+0h0yLvAfVIYNoMAyikJokOUaM6xBGf80x5Q/XfzWvvzUvpbDamVuqLHuVpsW4efnPko4mqh0Q/49WPXIuzdHhk7pl0eTa9p07/I9fRD9jTOsMA1HW6uffW0x7hLz1k9EvWPETYBNrPNEb3ZCZatClcklVJm8NVUbpNi2VaJE/2K/vnU6oCDr3LPLt3WZPbjTzy3TUXLNMqetn5O/Zffnr5u8dNjrLAUQNSQjumh0cYBKKV6E482l/9/Ifo6u7gdzsginPXbzm2yeGmXLawx9Vp024Pb/DB1EeS7CPU+e9xIajH5p/o/IcFQaxtWjVPtwn8L9oVpdhip3y5hbmwLm6bdPtbWBju9z0U0q14cXiC9C2c27Rp8I7Uc+PXJlSFbg1j8DJm25TrVPUatuCmfJhUyYLu3ycVkUwN6r4LwU/dhvdSPfSJ7usztkSwBcnXxfckv+nfQiqrPSr1O9hGKPqjgzpHcNu6wc8+0YheoKr7DZFZRD2EEEVF1DBf0r+HFURGIGzmEpVf6LRAjqnIwoUFQPYpLUcYJWHv4CCtiSCH4JyFqVO8nRAEGTvUhak/dCHTBVh1C0nnGkk/Ro7ZXAc/H9y+ff/x3dubt5//trj9/OX12w+Lj58+fHzz6fPbN7cHLw7+dXfwmszcdwcv7uCvd1AU+JZCQ6dMvv4XqDLUIWr0+QX6F0qA/jlArvgftkX364vuBxxRdnFx1v3+c/cDnAQyCLv8+q5MyFasmHWdJl/LRb38ujg7PD086T7/Sv4FkQ6YWcaQrrX0nr9ugTu6v0LlE6no1LqGuv77v5AU2iggAl4J/NzPi7i6UanoQ3pwikX/6wwG2OCwDsoqW2cFyPvkN5jKlxotxuE/r+A8kmGat9lmm2dJBmdg3Hjwt9f/iVP1pUW/dN4u6GfqSw3/AXCVCf/ZOQTDf/pbUegXdDEK/ZfWCvqRug4inCSn/xELQA0SyP34Z1zYJkUe4y+Or46ujk7PTn79WdAT6jxqNbVF9tiFRGGmhqGmijbPR8RH59eXF8en11emBGpYwjyjpVykj/g6mxWF4+Pz49Oji/Pza0MKQ08kJ00cX51eXh+dn11fGPJgrzG4MDg5uT47ubg8vjKUz3pDumng5Ors+vQUcjDWAPGNc5F+fHx1fXVxdWUqm2uIdpIvz67Pz64uL0wVT0YNfC/JlUN0dnp5dX55dWrcCQgH8iiHE4Pj08uzq9OTy9NzQwrc9Sa3JnB5DseC0xPTwYh6rbs1/tNL2AjOjo0bP2yAfSXct2viXu1UExcXkMf51dmRIRN8/5M0R0LFgcTVyeX5ydGZcXdEd5n594JdRsTLk6vz46Mr047Z+Z9HqzRdokCLTq3yEjaKsxPYPQ1ZDK6pOg1SF0cXFxdwftLuG9RW3g2QeE23IC9wJlbt8ujqAqpCf5wcpUBuk5sr4vTi+vr0+MJWDw+QQU5elDHXwOXp5SlUwvmppfCsQJ5QCQkHYTFGHZ1dQyvl7Fh7ZFDKt2qDZ+fnlxfnJ/rW6k58RpRfll/tyg4rHJomF6fnZ6ayP31+s7gpN9uygEh2Bb+8Pju/hi1fe3Jm1d6JXsAlGMhLu+5/eXwOKRwdGZceMiDXsUm7r6ykn19dnV4dn59qW8ZK6VbN/vLi9Ozo6uzcZtzp3h5w6veX5xdHp9fXXuRbaQAaJnCJdmzT/noC6PzacQC4uD45g0PQxbHV8IO3ehf0MtoCfrbSxeXZ0TVcqFxb9UUJB6t54OQY2aoGi5WOBLUU8W0wOCDkObJOFt1lUcvuiVZsJydHF8aDwyQbq5H6/BSup+AcbTxL9OspbDD50g5c1l5Am+Hq6Mi4/04TslIQNCHQauPCuAlTPsi7yZt6zk8vL64vz85tm7KSjJ2Fc3l6DOe60ytb3eCtN0+quTi/vjy6OjkxnvYmuNhp5vjoHK5CLq6NbU/KBqz68a972MPSCj6+vjg7hfbYtbEZuqNCbvyTu3m21ujlxSWcjS6NFTI4kbZQwRWyh47PJCaRaoO7e/JsKOx57WYzPEe66fERmoOPhrpXFZ8+s/bcS7+jOVL4o5Pzs9Oz4+GGgKrw4stue9ACLeru3blOAejpOfSzhKN6BjuBS8FraHJoa4B7Qu65NwKRrLIpnJ5dnB2dX5yaT547/w0bg+by8uQKdj/zqWDUvcN8goSG+MXVlYVhNer7Ya6R8yO4PLo+OTG3gOWeIeYMTo+OT0+vLGxe3m3EojFcHJ9D4/9Y/wSPF22/OYsPLq9O9HdnWcGjPicWJvXlxekJXJhq79FyXDqPFBs74Pj66vzi5NLcXmUdViza2zFsbZeXkglYQ25m29aO4NBzAruaueHHeruYV+/FyfkJLPCR8cYD7wtjLPjq+uz06vzUfL+XdZQxlnoG18+n50fHF7/+4+DX/wd44892=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA