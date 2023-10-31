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
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/serial \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/service-function \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/concentrator \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/debug-print \
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
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin-host/gateway \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/common \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_host/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/config \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/zll \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/core \
 -I$(COPIED_SDK_PATH)/platform/service/legacy_printf/inc \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/identify \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/stack/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/signature-decode \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/include \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/util \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/security \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/util/counters \
 -I$(COPIED_SDK_PATH)/protocol/zigbee/app/framework/cli \
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

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-afv2.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/form-and-join/form-and-join-cb.o

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

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cb.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/network-find/network-find.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/network-find/network-find.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-cli.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-time.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common-time.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-time.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common-time.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/framework/plugin/price-common/price-common.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/framework/plugin/price-common/price-common.o

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

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join-host-adapter.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/form-and-join-host-adapter.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/form-and-join-host-adapter.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/form-and-join-host-adapter.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join-host-adapter.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join-host-adapter.o

$(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join.o: $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/form-and-join.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/form-and-join.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/protocol/zigbee/app/util/common/form-and-join.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/zigbee/app/util/common/form-and-join.o

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
# SIMPLICITY_STUDIO_METADATA=eJztfW2T3DaS5l9x6MN9uDW7+P6i88yEV9bs6M5eKSz5dvdWGxVsFrubI1axhmTJak3Mfz+ABFkECZAgmShCF+cZu7uqycSDBwkgASQy//7i3a9v/+frVx/2v759++HFyxd///ji19c///jhzf9+ve/+6eOLlx9ffHzxjxfft2+8f/vbr69ev0cv/fCnL8f0u89xXiTZ6Q8fXxh3+scX38WnKDskp0f0xW8f/qz5H1/86Y8f84+nH8559tc4Kr9DP89xXj6/j9BP9BT5/uOL6rHvvvvhIUsPcf7dKTziP4eXMnuMT+2f8QNJGjd//hqetShN7iJU9CVP0Df4ry93r17ufisQtN2Pl6JMTrufsuhyjE9lsfuaPN7HsXbOw6hMonj3rvnl30/R+ef48JesKHek1F1H/G4MACokzrUoOx7D00E7hzkqWy4mXonzYT7dHObTOEzycFHml6gspOIbFjUN7AaAJoGcHpJHuTiaEkZgxKfwPo0PWoK6/BF1+Qa91CYbLXQM7GdUnswu2RYwCUImO00BIyASqRqcTCnvOU/kctAWMAKizD7FJ6l6ei1hDMbzOZYKgsjnQCjSPZrc9qQH7Uvcs2R1EV5Zc6A9lcf0hujq4sYBPqHH01iaJg1LGYeTnIoyPEXoUbnNSJUjCkkuR1Q5XEhJzWeWfZJIUa8QDphfP7zev8qO5+yEy5DFzrCUkeZqnttHYRmmmTQTg1cWH1o1sZF+IM1kZZUjCklefxuUw4eUoFfzODzeYFhiFTUDmDy6WEUJAEtOSXmTsWqkxLGBtFpI7RGEz0j2HsmSOsIzS5sHT+ZozyyNZ2dV0veI5ugTGmvS9B7/ckiKc1hGTxLXvwLlLoUsaxkjUO44ZGxAZacNaB4veDFouUSPFzwO+gnJ24DnsWIXApbL8Vix44C/RukGBI+UugyuXHpHSh2HGz604/jD5YTKySSux8eLnARareX3T3F4QFjkgxwUxwF4F+XRnuzUoV/lwBoU0oD5YVdv1LO37es3qF176u9Ibzp/7DOPlaou8mt4hq1XLXeHitj1i+nQTNetB+9ySr5oaXKfh/mzpL1YgpJT0tSeCX5uH38Jj+cUfHuJIOOWxetMUao95Oj337P8E6pKHstlbrQ8Dkb0QIQKysMyy+Wi45TEwXWKy6oWD8npIBcXpyQuX5cTGkwL2VwNShHR/1vovYhpmcfyQfELG0d3iKv10y2wDYriIAsPhzwuCq3agZWrWLyiOMgewzL+PZQ84A8L4et6y+z95XFfHXpIV/3RIjlI4yOawGrdrN+TCnKkNN7oGjXHnRc0HiObUPIQO1IcB2FyQKUkD8/aQxwfsKEtF+FYcRyEafwYRs/NejYsnuQ28lhxYubpYxx9yvbF4dPevrPuTL6dek7D8iHLjz1jlXqG7ENRjwwN4jTpPTB4JDlFg0eYUxw0rT02dk2ld6RmO1TmDqHbXYvfieDc4/NH8AXTTLRXEGKYJXl5zEXN9AQZw52czhfwc/W5qFsQgvqBV7rJV/BFymwV6eAQQx7mjzWgraFTQARZf8rx3sKh2hvbGv8ATL8Og7U4ewzOBcdOoqLAuyVCtUYYd30QM/vJxrC7OOaNphsD78AQwr0xXnF+k2xramsEc0fNjUFTQCaxJwoM+TV4BhJB9NuZB13k4vZB0ijX5pCzpTPr1oN1H4zQzMr+srdQIS4MUwsasUm5kXZzvpqCG9K6QKbbu/XjKMrDBqMwD/wVzjJDSmwR2lJ1697ZVpuYkF0gs9tMFfBXOGBddLBFAtBXkRStFnhzbR9Up1J7GpA0fe8Uc2uNGdYbqw4NaELt8cPnPCuzKEsVwt+FBK31T2EKoO7HJMqzbWbyaz0qPaeRTA1zz0UZH7UyOcI7f8wF3scyAT1HS7Ts9nZAD/QVxQTcKI+2xkogTACNj/dxXt+LecCb+Z/jfHOd5mGCHcWph1jDwoAr9NBWoySmBg+P+CeBwWhYNh+sQ4lEpL71c1tXuUaxu4KZVXH2oL1xlWgkS3roxhXgYRIYFTdGTiCIzTYbY72imIDbCNJqx8CtcTPgTFRAjZFVAGjVcze2+KlRRNzYrx/f5tiViVz08LV6WgnIIjsJCs2ZAnDT+Pan2T2sBMIE0PtLWW7f5a4oJidt88sXLY+LuNQO8cPmPY6FZ4rxLCvTDA/gWoK9LB/C6PaH8X3+OZgWVEXDl+sOYZqdlKxVD96SCobns5I1I7jEqxTH53x7a4wJCGx7qt4OgTk1qWVVl0hvvpSvy25OHnpIpnfhyQuI3iguij1GsMGWMrMSQ0wyT1G6zN1a8Un1yUlED8nSNlSiEkNM4PvLCBxAL668aTbbh8MPY+VvUUjT9LqErUZ2/DBWkBYFmDbU9/SO4Sl8jHOYUb0WiYy3m6sFVZlmVKTgQPeiemcJximaErmVqtWlN6PRANJS/lhf0Ry9+uX9m/fj7uevsrzvoD545s0pSi+H4WP9Db5jkRRV/JZEQiwWLtlVJXe4HjsCdDdEMrU3Wb1AQlZuj7wDZAJ4+RVfcSjjL7czFBioaRRCXD9Gt9sN5vJMQMjrgNWto/EOyBrHersJ+7AobrnvX6EmOwedsgc09VDeX26300FBJAVP4bvxxi0Fkb9R20eZh0cchGAbmJ3Cp3DeerCkcI4MkMNWz2+3x9Nr85yxfSNiCImsIwTsn21q3xrWXAp4QHHApjhPbq37fcBdGPKmhnpEWDk34Chwp0MSnk5oYXsz2mrojT1LAxjtjtXTl9tt5vWBXtjbdj2IN55taZCC020dKPGW0xkNU3A+w5svJVrogF/4FYR5LXwSZprc0DWkh7Ipe5rLsLyhkdXnsil8/oTG2uTgdLtb7W+QypENjWvhgvq8Dcxr4WL6vBHKpuxJRZmeJvPwkGTjs+QxnFAu9IAWPSXp7U67K9Q7VO6OKnu00fCTD0jArf14aKw9BJOINwU7A+c5jD7FG3M7wDCJ+rYOOzRarofOkNun560YrUueP84wArlRY8qlTPpx6Ogt/qckP+zPYV4+jw9OYpvZAocA7Z0gsnEseWjHBOw6tdyRTWw8xDOgSDsj6pclWc941cY2EAOKcLW7/pqbtt9IkzFAbsQ2j+BFFkSRpEmUnfZpeF+M91X0JHqm2gOY6rB17PW/XeLL5LFI9ahWPXqTRu/Wd9ep0q6DedcDNbU/03n6FioxuwqLw4Mc42OWP3PPaod29TFM00z69Z5xFmjQOwrVtIcGeXbTduTWYHFD3l8eHuJctCHrM9jGIKvf3ZYRGv+OB3DSURY/qEJP7dWnD0ysHvXbGKOKlaHRge0UT5mmzQXZMfO05mB8tgvP56lZrg2UO32H7pxeHpP+dja73G54TeYLPWWgXpC+pUHYJW/vEEu7loZdXUs6QuhugG+o3ON1kpGoErpew2yXgu0le2G4tr2YgxF31mHoczdms4g6UzGei8v5nN1g11OEpS6wHQ+lQPuzXlVGxScrOUPRmRypoO/TLQmg9XX0bTGNbyJ1K6MENaBdH5lQo5NXsjLUbhIEYlmNuvDmVEvhKi2pTnSvaGVqYDOqosjI0qsHbyQZGwKUrEiDbOYQoGhlCLJ1Y3wVKL2+6C8yzDPjwCvR+zoVYUerF+yK7HdV0IDpGq7WhupSP06K/teMs9DrsUW9oIUPn00llIGCtWODFNAF+kVFppmxuvEnHHEdaFIAiDR/86wSxDRgdl1UAq3c5jxQxXQdVGSG6Xp9RQ1tZdRF1Chqm1GFwXeoXKsH20GujTk9rn1JqVZuUQ2/WT8wdRNUiVDVfV4JlrqAdn10Ah2CztClyGDFrdSMQYt+TY2Ba6ReogMY1cQqDGJ8BVw9mCEDNIo1psM7k5vu80q0dxfQro9OoLG7r1RBL9WuVQtxbtVUGXf4NRMfd6hmVqGD8pVQbNdi2MJK16qFuG7sqXK5MlJsMQgilcQZQlVRZIJ+N4Qm0OCdlx7T7D5Uulo0wnm1ixDy7KiRHM4q15KNdLWG9zLaCik7Iw+uGsbVEBkzaa+ooTV8V4lxT6iWs4e/GUGAcYAKrUl3LhAOON2Tl9oc6dtqS78KOw5CJn9TNdtUQ4RqxvahEmx+3oTYO+XIFfBMwQNoF8lkczZLFyWQ98BMgs/OdeZXFbDTWKa7URwhuKUCO6VVuqMemkn4Slh9lbUwbuPRoA+ZIqCvQOYpyqYD7UBReNMtp4tuDp7GIqzjm+PuAFk+idWGlMaMlcF4PP5aDP1dGSTh5xQxhau67TCgXQfVylNcVBntEBdRnpyxQ9ghKc5hGT0JHehy3lWHKx5C7h9ED3s5ryulKLMrL76I4tKnwFJqacuv3lp6DMv491DoLJw8qpK7b00bAbZjABRQC3x2Fz3h4C+pulXjgBSoXo+U7U0tgZabsYPWvKnSGNavlfAI1VdgZQYmXg8T27Rnta7qVRu1R8VP9KMzTi70kDxe8pC7R9Vf/PdfUkezB9CG38y27kRN5UE0AyZ54YMCzt/VRbwOEoHlZL1bhub1KPsc58+qVIIPbLJO4YMSp99NW4yfdfeRV/ey1QDeQpnGXZZ5cn8pY61Ivm58PF+jHwCaUwdk6IaPilXjimlGTRS489mrx+gtT3oDPU1whILwvLHVWFWABjOJ/RgXhRoa1EEyjfqSlolGNt1VwN7HM1kDBe5MVMhHb0UMEWvY1Rz1kRtkFhbETiMSqEWVG6Q9mVdH/0eQCdeKOFeoV6khsAX2njKm0hi0yXphdycNi1GgIhSWSeSKgBbGi08fFMHchTKJu3GRCtN0e+f+Cj4DkWgtsvIJO0ApV5chLvE1z6YbM/SaR+Q4ED18DJONnV0a2A0SEdS3yRslBJubPGqIe7ASUqACLEyzV2cq1WM8pgtndbZ9BWgw09gV8EqvcY86oPeDpTwk8uPAi2BugMyecbcHz0C0cMZVpi5DXIKr5O1rMH6zfnTVogB6JqYZ65Tta0BhEVunbA9aGC9eHHTiOigAnYFohRMy/z4g46LHHsHZt3D2Kqz5yaWlCXzTzcx6Hx8V7bc+mB+rYAfgshqqYMMItKBQR2W9r8CScKx64stENjtKmBGj7TdqUAhflEkeT2F5ybELWZQxc6AyrpM0L+3rlza+KNOrwo6DUOiiTP+9bS/KiNRsXfMT73Ah54nT9k1N4O46aEQ2VK5O8ApMq91KMIAJbRDlCKeGo15ufSDVrUwf1fSSOX8+l5mGE2+polh9SHO0a+tbdUO1Etu46FZZjSr0Ic24c6PALkxbDQYq8ZqgMmrX7nDrIIzD+vSxLZ+AEm7q9UE/25YEAnQXMvPiMAfpm+S2EgTNz3bFHNFU2MHvgJ+ze098UtGEes5OeNP5iMQmp0dFmmIUnnA/EssZwnGLHd6VT0IB99lr2E1srISnwz7BM/05jzeyQppNPoR+NwlOxPofkbCB7ohXT6RbpMnp8kWrxW1dmz4WkbOsrTGL3kEl7aN12sfcHDsH0zyl2biH97Estzm4N2UZ92TJJkuxWe07t2O7WCabrnoFZwTXttuj6VWgh0asCtUMWp2BJGUSq9AODERCVdkeunj4glirqlqUl0226K+wWWhEDiPRIFEPdw9htIkd263CEI3wNNLEw9nEer3WgQlHuBKV7M2WQ8Na0HjmD6WbVoKFRrwKimAXB90fbbfHz0AkVhV8pEhfiERN+BBe0lKFak2gE6tiU44C9elCEQOPBajQEi0OMbNic8BCUPMY/1JP5IpMalxIs2yk6tLrxgbGEM2sKqjRa3mIZlVlM9dpdj3E3aept7Y3lZhwZhve2iXcJmIK3/puIS3fPxiLi8MLH7NZazKixIg51dbvbY67g2N5ixFo7W68qFMesoAqD9JNx/g++B0bm6CfE/XaVj1TpErijnfNa9s5d4hUao6HxzGpByztHG43mQ3qM4C1rH2UqQ8P3cxqpcl9Hm7j8C5Srw48+b7MVEa2zXoicZscgJlsWDqhXLUiDg/hecvzTVZdBsjmVWwzTWW2i0iH6yUxJBVXqRpdUALHanWX3FinOjAUvpHXRTxjjN56VO5xfCMv3dZDKzwc8iqqRhg9bXf2N/QcG+ASdojb8BC9V4m1U+lIYvlen9suMTbRYaFk2Kt8lNpdq2lHpbBgR3GmbefiqZ4eL5tEpWqrs0NAdj0w04Y/eV4d5PNgb6CoHNhCjo5N65zz5LM62Fs44hW4bOIexdf1uQMk86QsybbtBn0kjBqxgf/tEl+28VRhgb+iEa7A1kNnH4kw8O2sVBb4MWtV5HRYnXr0QAlXB3UcRepQIxEGvv2MMMQyd/xRBP4VzZzxRxHw7LmMOZOxv+wt5EpWpvPBAgF3N6Y53GXreI+jilD+GvW2UIQjD956AK9qRkLP7ASwTejCNte4qEqM3dmabImt/Homm2HcpYcOhILPrrVK4qbV6OEQQn1+uvl+AQMzQSE0fAyGgXMalniLcXpdzFk9D9R0X58IbENMU51dPcJ2wQDvKPCvFDK67SauFjUjzY2wHhCR0UYBwCJQ8xznI4pvfnOzB7cLQwSyAnAFoIZxoaH1xbZgOyAm4N4np0NyetwmpCINegBlCnqWlWkWHjZG3UExBfi53NBlugd7gGXK9Lv/FGskAEB8ekxOG2sLG89UJaIjtlg2Hkq6KKYAPyXpxgreQhCyt8O0jPNTiJTrGEYKzIdDQELVqKLNqQC/BSIG+4KjWjxHWw/lLDRCFcjD0yE7bhEdl1UBGs1EBR43chCmgT+O+gWrcBRP4x0/iO/CRd1XS8Pnra1sCsYUZJJfYlvAVxBTcKm0MduC7kMRgr7Z9gINm7O/0INMKkcSxmxwrkBDZ8KZqEIe/q4poeM9IBOwi+ySR7GWZ5fbR9aicfeRTAHHL2vJ6WHj5SWNY2rnrxt+blPYfSQTwGl/3Q03XBv8HEBT1UjT7e2pDggBuArYURQMMUVpnemO4QkNRBsr+wioZdVRolWmoC3b00eNPbUtXelDdXqw5RkYQrFjIVlW7SjLJ7fjiUUTnhSoPca74wNaRsKIE69Qr9jCL7Cmo3WAnYK2sL9v4To4p2bLR7LqttTp9gHXBGvXhbfUx2HwVe+L/kd6pQ1/SaiRuWMVGJ7BozARkczi0vgg7W59XzYTQB6HhyMy+MtjCls6JbgtmnI1aDD8VHscoPLT8D5OqW/uszA/vMqOZ/TGPT4ieK5mi+NdkaCHi7vq73en7BS/1O/Q/9Ar5zAv+29UvbSKD1f/d+/a6Mkyy9LoCanDSAFFcdfem7tDdP41jtBIhoZ/VOgH9P4r/H5bNupwY7IOn+5qW7m4nOP8ZdU17/aaaTq2GwSe2Rn5fzjERZQnZ0zUH3/YdT813YYis/r2hx1BWH168f2L929+effzm1dvPvzH/v2H335683b/y9uffvv59fsXL1/8599x8x+zz/Hh44uXD2FaxN9/fHF/SdCsdnr9pTJzCvSX//yv69fvq1Vi9S3qK5cye4xPu6/hWcPBD5GSf9//9lJlbG3DKoV5Ud9HE3vwafggeaBAK6iodlJhP8H8SzM/9/4Qn/A5H45+iF7G535EBkt8m1Cd+f3w+YSFpM0d0/u+siNYpWKrEn+Nm+KYHS4pspZefnzxA2nul7/8Un353Zdjeipekm//8PEj0vyyPL/c7X7//fdGC1HldkWBem2ty3Fle33Efa1u4+o1RG/9ZXKoPl+iu7rcuyIuL+e78IzUeP81Sl+1Spjld50B4O4xiioB58ORkvjHj0g3KwWuTOkCh1RBfRbnKa6Lvvvv+L878lyr0k0d/1iRQ7AiFrDcf3y/VpeJV05z+ag6+KUV5ur0hZftVX05D9Q3YZh/jI9pcr/HjO+r45Q96yES0IApIDmgwpOHZ+0hjg84YgPzqTR+DKNnksBlHxZPzHJQY/V8v5hPNbtxCep2rAeKdI96P7ME6k/7+Et4PNcnMNQj9XxCCKm6BlPY5ZR8ae4qM4Hg3EztWK1hknmP4X+bMlD3ov5ag6maiFetFjDe/eg8oUzvvER1t/yGO2Qz+v364fX+VRMKuz80tvpVRzyu3TWi6Udqq2T41BN6JI05pSQnNHejzl+wS7j+mfF2Nbvtizrd3B59zZIxfGgoqWFiH4VlmGb92Qw9Uk1EpCb9qXbw58HbCdIUZLodWyoGAgZP8GUkp6Qc4SWpOc+yT/1iSAcLH1pWqOhbzCeruXP/hMxOcg1x+BQZD5swuftDUiA9j56GJsnk80z52MoUl859mim7shvFhfMfZ0qvxkNR2byH1RoBP8RH7FEaf8tjYL1yRH8dLOcbX9lXv7x/8373Cm9HvWm8ZI5FUlQjRXLt4vMFIKoWv/sZdUFybjfz/fIrnk/L+Es59TK5Po/aC485YYHGzZnvXG9fib8Tnw4JDpFVFHPfq0Oair+BxsdiZoVwNpzLTGBoqEYrHsF3irxL9oRq0u/U1Zn3Sg1t4p3KpK59xnGV4mNlu01ViP0WnnTjPJlU/Ppt8qKY6lGv3E+3EvW8mKb2XhElgbyADGc8yc56R7Cf5+EhybC7SuWy0nrxib/ygL7W6ql93otL3sEr23hZccTdQvyF9rRo7BViEeIEE+3QVeeamP/WPswf6228he/T2ytz305O58tkV+G8Wz7hPcX4sG+23JfIwEZi8nWyZ/Ben9tcZCS77o7NfKvTXMveb5pr2dt1cy18N1v4It3OC2U07Tz79WR5L+kKmK3o1MuZ6JvNUqtR0ubz2vfR3HtYgIK0QItCkH3e+wSFoJTBpldVKRx0Qmz6nJbTPU1ZJglXsINoXs2ewrSC0tzziHMtjhEm4dbmy7kGv8VrDkBxeO1/CNPsJDzkCkhdKupSlrPVoHk5yidNI86b8dH88kXLY7QwxXfMhIeUgRjsB15tjz7gfc3PAkYnR9RTOFeFO2+ueDuNhe2G3pvHJMqzZf2YFjFrBmdJWPPuLMulJ6D5u6BdypFSXyNY+HLRpmNb/PJyGXjkxH1w/pCJ32R2nmWiOi25TABpg2UvF89FGR+1Mjm2u3PCIprFbhtyfu7LGED98rySa94bG4P6UhRGXe9206L6VO0vrxKAJk8cbmIfRqXAMrYnqtml6GARpIUpoIdFUFS9603cdRqJ9Zf4PjNHyvxIY+ukXLjLn7lBw1bJWA1iEQJWuKdVQnqxllbI4hvXs4ImrRCwWL9Y4cvWC1mHZKGa94MJCQq4hvPG68f6uJu/zzApoDnnXyMjO9duBDAillJxTaq+AgclZCkS7JGwBkTz/uLyD9ny8uu9+OaA9Xzet39rT/+WARsTPLouXisWGm3X5wtOan0ufL+IBHZG9DViRhdMgkJWvT6aDn22VCKtHXdJ4txlbHeFYadZrfHSxNFkyLk49w+bFLpBiWtbiZGeSCsu53PGX8HNlt163K1vkr5IAnXxMCwqG4rmnmxZmFfjHTgvDr9ZgZ12BO27ha5qyjHRssQuJ5vyd6WdX2E0e7oAucJXUdMLfr9u/GDJW0stSyBojWcuqwUkZmUoRypoxdcIqxyd681ItvvzmqpPC1+BnEpo009v8/DZXAN8TPa6fjXwmR9+AyH+KhUGbkfeumFgIBBW2Ap96t4t6F00WEXhiNx1VHIFyxG6glrU19uUddSHtRTwBeNDCYmSZZAhBe4apMM7LMxrLat6h1AZKyuxr7af6ouia3bBRiReijI7Xm8OghfwmGb34XLk7d3q8EE7ZYdlPaMr5LojuVx1WfIWtXRXEBXMZhUqEkQT+zGv5IuStKqCHdo7N8HWCkPP1zsm4ULDlBwAtmnpq5NEcnWo+W4hhQKCFyFOHk9hiXOGH+Iow7GbkODmu3393TLEIoKXIK5SnIUPazpcI6J7bXiNhDXVWLyqagRUkRPWIBj1PBCQUJZ5cn8pY60Y8e2cJYdskgOKAqjd8r0gpqDFiNDUhzfccbSsxWA6MpbjWG5WkfcXj9x1pnliCTSnXovJ6Ataiygrn7DpA4WrJ24xuib+4WI8dMzNxWKq/Q4SRnKpbXIVtPb1xXSea8+g1tRdTW8jkDT7anmNyXBIiij7HOerTFSOxHWT10De8tbAa9EqXP1yNFcRi1GsA7CubLw46mwzrhM0syLsXM8LXubm5l4tq85jdU29vlYgiIxlFevk/17x9uyyl++1VwKqc/0mUFA/cMAyKdVTc10hrmJqJwMyr85xVeuJwLeItdkrpREhiyszdp95+u1qHOjk/Fhcl76gxYiGrpVUIrRlQptHlkvAH5cDWMzrohLzGMdz0+p2WdXrql0SImmm2y1byKqG6AoqysucrVe2kLmrYI6UxaNRfQejc0nrEs46ZedLmguH4duzVAT5Off14c5c4zkRhdHT7FF2IG4+nuqazLxzeupNMmNVbXLOY/Rfc6GoKlKiRm7szCZiKGIZiushdhPDqVO1hbDGZc7ESY4MrrZteExq+nFs4NXSyBck1PrshdUMobBIZy7YhEXCopxno3LSv859cyrtKoS8XjbduSKp9KTLXm6zAsx4fTSqtrAcRu7B2e8OUgDOl9BJxzf/5UFSvNki2Gnp5ovppIib//JYrJfRNzkp0xbKaXOXLX2fyh+2UAidw2uhkDlmHycp6/w3u/lRl7296M3HeVYuN53X7HepzFrz376m/5n/bj/b1EIJc0fu0dxLs6X0kiDNfr+fjGi+ACot0OzX++l5ZgugjYz5M6FwlhEoictkXVPpLHp3fi1GcoQLyxBOVgEsERRjNzGDsFRezhaGgHq1hMwP9NQeh+Xc1dE5q7hyu/vLw0Oct9fO648E25HvprBEaHUxF0JeHXagie5W/3GR3DqCboWr/p1gZGvMMllLcB3jY5Y/X2MBpOjXNM14ITMWChtBVj4l+WGP0y887zohH9poTqMRH3gSyEsjdeC/NK8kHDyhj7Uutp9J4/trYpLveyk0lAmA296XfF99/FaD4CrDJ1mfIzbL6vLp/yd0JaGvqk0nIuMdovGfL3it+K3yeo2SfRflUZMUAP2q0JhwiZr3v1WWlaFSHb39L2aan3c//YJz/PzwJ8TIx4/fkUC9f/j4wsB5itA38SnK8AYX+uq3D3/W/I8v/oSKxeWigkm56DGSokk4wQQWjd4+x2hifR+hn+jlRtqLtgD0EPo/SX93LaXuNIPnOE9/jVLOo80LCVKT7uNUyg/0lyrac1jGhz+QNsJfpsnpU/VNpZx1azDQtEnLmFCpkjmJS1YCoMvgZloBLWU0wwpoSZw0O6BlcDLbANdjkA1IXrvDt3dzSDZIhiOjmEE+HdBCeKmdQAsZpm6Cbu2WK1ayJNDCRnJVwXbDkTRUoAWN5c4CLWgs/dbSgjgTzg9kP+1dWD6hj3UCx6K8HJLsZWM+7Jp5dSBT/OVdNdteBXQyDZJvvpNna3BTuayyNoi9zjU32ONsL9MUeqI1G6+NOWzheYP5MFeVjHI6CZxkiKfyZcktAL4GvdxUoNKHKc3A2WGlCYMuZJBJTG4BEpSIlcpMehky6zFMuAbf75ip7G5RDHRtiCU1minttgVCE9nxceOnsbtxiZLqOJZM76blSarfSM69WxYnqXa8RI+SyhqkilxazhqjvDU/NzGqJ46HVhnWvQM30f285mx/YlOv9xaZIUZf4ryKLDyB1zgvoyYWfpmpjtcsXh+Hq7+B1iA2RRKCsTvCLETXJFdAuK4CIdB18o9B4euIhEDYpn6CwtcKBGndTgY0sAbuyITASGXfggJJCQVhsp+PDozOvmBRtKOHEgJjWpGDjGnXtHGrGGHloQPtAYAAuzIhRzlAiB2RAAgBkUFxViezAFO5DAoXlcIRCh4ldCVKRspDAJgMqSA4YaZXZq5GGHwZLLhMznwFOfj1BYPPV+IPDsx0sjW23NCHmBS7CTEXsz6WZXOtfgwzboLDvIq+lTkDsUTrJlRdTwkjSytwy8mAeRWtUMcenLFu2MPpjK6L+RdJF/vN9B067y4gJ8Okvqu6UD+vrwSkXfHq9aCncNyNTm7XobNpriWfnaNz3RDbS7gJBbEvdxXIa0pRKHhXiauAkYytUKiIuFWQeKlgoTDy5Ks8cvdEzBkSRpgmiaIhiO3lnp6pAPMY5ZBShw6B4OUaDgWKmkFy5ZsQxBvIAStGS4Xv94BQefJXj5+AGIk4iLkGENVV4ipgjAzpUAgZoldBhR8ZV0OqehqgxU71YChjvRa2/oCSiRHmmLKSBQ5u/U6BpDlnNbA0XneW20NFxK2CdH8pS9hOcJW4cgozv3zR8riISxyNBbQPsGSvY5GEP2qCFTTxAcE45cgHB43Dd5wOYZqdpOPvFQVflfB8ll4HUgYU+Dg+57D2BlO4Qhsz9dbAticWNYbKoXjV4riW05wF9KSu3fsm4s51OPt92Ca9gYU7lK/yWn6sJdd0IkINORvoSZXTkuBwh/IV6vbNKIUWuxv2/To4McR+GI7QhDtSK/Gb6TVtgGYQDrAKthIV0rfaC5pE+Nl2tqmh4ACDaxSPqlAzhlOiFWKfaEi9X7StGzIFBULtO8GfWOK3aAWRR/rcvvrl/Zv3SxzLX+GIIoub9E19eWBds0bHIimqe4BJunAvrKr+Dtdl96YJ5zqQum53sxJHrjbAYuwIXQWx/Irvbpfxl2XGEwMfLRGAv8do2R4xlzsi8FvpplWcgiXddM7YOdiJ2YdFsfQEoUJMdl06coQJH2C5vyzbC6KAECHLUazYPKaAzN8sHmLJwyO+SbYeTEfQcjRrhjgKzYJhjdVO+bKdrF4r5YKbVMuNpHVrodW20Xqu2gXALMKmIe2ru4nJGv3uQ+uK/FaG/nqkuPHYjyMTnA4JzlZTLBt2SX40Yh/TwhZ260rOZdk2aR/OZd6G6ADIipmRhrJ6aqxDYSydlGgwq2clvA1VokXQIwCYq6AVYNJkobNGD0sjZw0vYbnQhOnz0giSOS3N2fLgdo8lOx2ksmRr4ypotUauB3MVtFYjAbA0ckCUYMnElIcI45J56RguVi2ctKLNtzKbwQoxTnyxo+QsbEws4wGJXuOLQyPqSVuBCwwSCBoSjx4M1EDeCmzLHW1oTLM9a1g81QlN1rJTS5E/LkzEh+31ehySfl7Yi078+iXDzNpt59Wb/oxA+6JNOzN+/zdz6sTIk7CWEk76BWmU0P6YYC27oDGZUAAYnUOiJNuim7NjSd/vpPlYPgB0Epes3GOhM6jMap8lKVrW7b7QKVrkgr1h4A8628vqA8Vr3hkYhsYy26z1PLmmtZGM9YbNSWc+WtecvLRJMGwJ5mha6c5LJ5KSgrxfCARiOp+WTNh0Scrt/s4zppvrtvMM6jo64JL5NDyfl8+jbTaFtXf2zunlMRHZChepUTdU/iKRTLWmxM7a5mEkd74mdK5rvqOk7wZlzeuQorXQ5oZCWlkTbVG8JOE2mbPAXtsmswfJj/MGHQE97yYZgVNzKnVJcTmfs5m7vSLMdgvZ8UoE0xJWAVJUf7Ja4B2AyR10P5huLSV6Q52qBrInNMlvpKhKLXzXLwVQNYjgrAy12SEqltWhWxR8RW5UCXkViO5voUf3UsBLGFV6yJeOItOdVzr0phQpnfcG8EkpW4/hVaKmOggB3DDOzDoF3g870HfcEsHUg10CtJ5M10kBnakCG4Sng/bXbOECkskwJVYLHz6b4CpDFbFjFwimMbR4CRPRWG2WT0mQmtIkUINTkkYiOJmN4F23BDBdaDPJyTBsB9DBDdurYHgtZqCHNafaBoUerIcqo8DgPMhZCN/3WtHSdKEtYfiNCsNaNw8sHL1dqeDMdoXv+iWBdTU6Qa6EoY5bDfAhjxYOP+yN1AR2+KMaG3oI5KuVAkMhMpijWBN2+RfksysVXCu6wnf9ksBUoiu4Cih6u3q0xcmpjIwxh18X6DGHanDorspXLchdlGFb36webXFbjztVLrwZqcImSa3p0JBcKQpO8O6GxYCpRUf0Y5rdhzerCF2ajPpEl6LMjhpJR3izBmKWqoDmay16bZbD4DTlA9kyzLJhKYyvoE20YQngo6ZQvW46eIIFWcaBRLQmCyhIuOW0TSPciIXTsz7gHae0Re0wXQ8wvRKqx3y/NhClWDr5Dk6EcmB/HTyId6UCNHKz6ALH2RMMADU7Y6WAR0rLheg4cYRwlMC7tVUSrJ5kALDgVmFlaayzAfsQD5kEiFeh0E0ONkgOmnzpBMvtSKBQabmAugmKsiN0i8mlNqi0WZFGRgXGXwtxf+BJyrE0CYZxVd8dFr7rlLD1egNXXTvERZQnZ+wc1ySeBzyU5pQgh19eadw/wB5YcwqRpk6zqwu98OLSCrz8Wtq6CmxmPYZl/HsIeIJPBMpydK6pJoXsGIWBKQ8+jYyecCCe9DaV4RQIVqEeWTK2skZbB3yXrpEva/zq1wN4dOorr5RBiddTIA8FWO18y8qssmgh/QaiM0709JA8XvJw8W4Vk+KBaDkaPyhm+M1N7UIYk34ymoZgI4QPwA7z1dXMjlSQhW69b4dsjCj7HOfPMiDzCwGoQfgAfvre8LzurH2Is7qdDw+zFQuBsizz5P5SxlqRfAV0BKixDoTDIkbGcvgoEfRVPihu4PusPdSrbrD2t8DTBMeXCM+AlmAFlxYMgPQYFwW8LnSkQmC8pGWikY11aKR92QB4ge9tVDhX3cxg4dOw4zvS/pnZlgWR0tJBMFcZZdqTezl6O1IKYB2Ic4XcKgwLkWIFSTEpxooBqAV2eNJwQcCwKbkAOCVABESHzxMkIOyKBUDZODKFaQrrel+BZUiHw5yVT9hFSSryYRmQFjzYZgVtwcMcsiFxxzABdO1oQDZSYTDOz5ElBHJ2oqwxlAPLHxguS76ElYUs1OvisHBXFrBwacEQSIH9sWuUq1yvhyFJHpJ5UeJFEDZCJcxesFAZ0qXNXlKQD8sAW73B4l13B33CBgfGypQPanXD4qXkQlndsBAB0WHzuBPtABgoQ/omjqjL754xLxzsUVX3bVX30GtWcqlmoiyIxmeVgI8I9pBHtWPV6RQmqz7QdoNA6wB1TVYJwAuhscpALo7YbIFP5qNts3haB7oikTyewvKSYxejKJudJ5RJK3b2b8Tua7GAVyR6gHec0oCuSPQlw12REKnHVkpBvJKBjr1PsApAwO06kmE2Ia7O2MBTZxcyoxCgLZT8UpQajgUJedjRhd4vAWJxmj+fy0zDibZkqEhfPKyeQN6XGioI1PK/SwE84L540NsWwDsXLWhGCZC4EYraaTeEDBY4RN8vZ4upIlmUXpzTs+DIIrB24awMNePdfn7+KkGI8zNaTYxP0PvTHaiwe9PEexCngM9OeGP2iApOTo8SaB4tSmrPWZt/Y4EDIusmdBKCuDFeA09iAyY8HfYJtgfOeQxgdzRbcwjrbrIgGAt/pIyVOiheGZjOhIBevmh1gZDY+3JhzncgEcLdSSSto3VaxwRFypEP3fyA/bAvdwsrY/EtSOb9R7LlUoCw1Ln12JUL0KCVUJw/W4PZQ+nB7UmGAlzNvNVJRVImMTTHDOlAwGGBQl48j7Wq6gjA6u3vK0iWZJhjOzRM1MPbQxittkG7gIeSAQf8JirJasvzipgpGhByVTrIomSImZYtYzADg8ySDAlYAlJIiP0RERYtQzoUcHzIRl8OQw34EF7SEroSEyVBVahBAoy+KxYKKi4CmuVWJtSEDAoPCFge41/qaVPClMEVD2xLVBfuAKfmoWRgwPB9iycdGDiIYysbNaRzKyUX1qRgipZgamqXcH2MBb692YrfYv27Js4GPzAFSBsz4k9AuVjWkkFRdmRu0Y4kRmu7Ow3n/IUsmsqfEWxk70PdscsB88KhBEP0YpEKQDp4NYJhnAdEqgDrQXBM6sFOO4cwE9YA/aAIWdzfQP8l+NQ1otPkPg/XOzyL1KJT1LftAUvltwLpe8RpbyAYoLnpZFzV6jQ8hGeo8zMW8kEp0NUA0VYm5zBdrJfOjRAhC3S3AJCjnbqbAmpHR6Qyt6C6+EDHV8gRtcff/wMemq0/UZNRPQqjJ5jTpqHP0qAMQMcroIPaHuTtJscVCbQH/RMmaTDpAasTBd/Yg6bdmVrrRhMWy6LH9m3t4qmekC+rI+e0VdshobueYIhlAZEoByc0yJXqzQEJ5JjXtM05Tz7LQdqKhoR7We2qw9fRWw2tnNOnJINT677UmfXiQfzbJb6s96JgwbxKBoIKOZj1pQJBhLFTWTCX2qtiJ6NyEPcKAAKO1F8C2loqEETYEXgoF7bvSwB6lQzX9yXAnDdDCM8N4g8Oll3lnJzJDJMed7nZRijN+fEeR4OgvBnqzZ0IR0RbMwRXtSOhPXYC5azSnfWXeyi4S2/yCLAL4ZUySe1yh5R+AAp8KqxV5YEB7skEwHd+WrVaZ6AjEsEHC05XPqdhibf81q4oV2SK6Snuvt7TX09rU7VdPRp3BSu9yl92FY05AKx2gaiZbO4e9YSuH6GAoa0Hlec4M0m86gZfD1hX5HpwwMBWgwrjQkMrBjhYHYGrgN0np0NyelwfLI6GNxC7DmSWlWkWrkpZ38PXkbgO2nMJ5I7bAziQu878uv8Ua+Tydnx6TE6Abc2WvQ5udMT2B2A37kpcB+0pSQEVsRUHYMeGaRnnpxApzjGMoKezgXAAwFVULmigrVAIgBccNeA5ghwaWZIBoObh6ZAd18bQZEGlJa+C+gjgbkpDfFzsZQp/aEwjW35kTAND3U1Lw2dIK5ASuQ4cicQOB+0qcB0wKgUCHLy+WACQIItjGuDM1TETXJPzuU56sHJXmgbJFL0KbB7+roHrYk/oKoBFdsmjWMuzy7q4PDTCvtR1ELFoLTk9AC5TaJnrdpK64ajAAPalroJIe1sCbco1SDnC1wFOU1iLoSNwNTBgS4ESCdHMrZPTMTyhIQJQKUcKkAEcnOmpYm61a4uafN32YKUz1X4z1PkFkrhjSb0VJVGWr9wyJRZGeAJmBiPb8YXfiqCFrpaCPW2tb1VNVeu0OFWMlNFirevVnDrIGvGqeymndYGTBOvRLWqLs+3RRzh/5H3dX5lOX77Ab7zcvXq5+63APqQ/ImsrOe1+yqLLEdlcRcPaOQ+jEtk1u3fNL/9+is4/x4e/4EOppqA+ff1N9vNkWBcQOKScCTRpfBC+xwwCq1/gBL48Dg9HtGooj+kNwFGlDZARy+FdWD7BFitYVtPNEX1/jaNy9xhHn7I96vR7+866M69npCSPBA5Bhs0dmeKLHFz8q1/ev3m/e4Un2jfN6SlsCfExTe5lMFMLro6oJUgntzwktmiCkKM+cJRZRho/htEzif+/x8638gt7ClPAUurcJ09JftifwxxNqlXGjge50qHxF0maILt1n4b3Bf6Afuxrs1t+GbsqX8K+cvi7SXnH+Jjlz3ti7MhStuK5KGPQvjMaRLYOHrtrLi9Vh9gSC+6EX7xJ9ZpkSE3ImVtyipQIb7blYZmBaYtYuc31qtuV2Uk6BFSsHPQSOelcxZLbfdqQKXKLqSOTyi1jGDVESnnEuVmebNqzUGpJiRxrNg/Rc/i0VNa8Vm1yNZOn5OmNupZ1w2GwLrPOXBAXUZ6cS+zplxTnsIxkAunc3755deUPR/18U7LtfOCV14iHt9QiqiMBqVUAM/R5TQG+ahEyZpIDMtuSh9uoNCmz9RNITodblosYbmP+SNWW62HDLcz+Qe63GxQKPDOPllVnzrjJAkp6s1GhF24zjaSJ/DXuDdWd9GWc/bX9UuMMz8jEy7OfYjTOJNWCuN0kf//z/tXbX969/dfX//ph/+rHDz/+/PZf9u9+ff0efZ4j593PP37489tff9n/5fWPP73+tdpd/xymF/y3//a3S1b+j2a0157i8IDP+uuv5xTy+v+8f7f/y9v3s5D9y48fXv/bj/+x//Hduzmv/fZq/8+/vfn5p9n4fnz/l9nv/Pbjr7Pq9Nv71/v/8+M71HT/+uc3/0KRbcyRU7//268/fnjz9l/5TTeSMJ3biMQ79M90fqTyCZ+TiD7Omv+ZDx4ZD5ZZlr49k/riD2/w2c/127tLdFcdCeVVjbPqS+4zd4/xKc6R0ftLeK7K7rJU5szNSBEEOH8TEjeBoXnqLtqjefV0CPMDBSAKghuV/+ULB8E//ZPBUj0JGH4P81OV6CpM042aoYUQfynzcGsQ5/gQItM1onCQQ87bNkge76vrZMVWUPATx+RrWO/6djAUyVdxCMfwU4zX83eVi8Zj1O0AfSBjz/K6q1aUhz/M6bNjhZzPcyDhk31eH65hzerIYEw1OrTvd2rt30LmivYGRN0A0zKOhqOO9m/ku015kotrFlfcgUB7y1pt3IAlWERhfqSKGIBJiojj4VeJ/jkpylZ8i+ThlGn3lyQtk5PGO5meJaRYLOXfkJTL6VJgn58Q254l6/RVSAziosB3dR+SOMWp6pARHKZoPmCtO2cJRJZoFC8RwtoC3F1bXEwXUNPf1SfVd8khRr9aZq0Sh/Ku3nE/4GY43OE37h5Pl7uORt6HxAWqozMdgb2n64fusFLdZeVTnKcJN8zD/1evzdWL6xg7Riu5CKSl8emxfPqDDqGi/CERZrz6llvxJh0em3tzunz3eaBO/y230TfY0xrDICyK+HgP1tO+oA+tSO33pHzSKhNom2mM7MlMaPRccVGSR5cUrYric3w6xKfoefnKXp1andDQe0iT+zVr8mUjD3t3bY2suU30Q7O13n7z3Q9/+nJM8Sto1ECQ8I7pnV4JQdIyHNMF769++LPmf3zxp6sgIudju+V4ie6O2eGCelwRl5fzHQl49j4uy2ovpOOkjatXlYCEnOO8fH4foZ94O5QI7SCWhu9Vddj3rn7sHUL1zxXJs2D2leWM3qra6n0Zn/+IyKY+b9AIl4hUcF29BmGyL2X2GPMSe/SuHdxFebQn2+NRXpdM7NVWQ9FXzX7ygT+y9O+o3JDIdXpyA3UOz2H0af81Sl+1YQezfMNW/xqeNZy2fUV7j8i9FGUVYZEksw3zot0QuUlRTzKKIkUU6L2ojUYppQxJsjvXQmFFxyfskI0tXFQBbJ+SesghqfKol6JNtWQZmBM5bVptJ0iRXDlCymk/fOt8jWDeXUgRj4V2jByzuV58/+L9m1/e/fzm1ZsP/7F//+G3n9683b/79e27179+ePP6/YuXL/7+8cVPtf308cXLj+jjR1RU+DlGhkQWffrfYZ7gDlHgr1/i/+AH8D/ImDwn6KnDp5+zqN5ZJX942fzS86lovv6++QVflHl7Hr6HDM7Ll71rN5//Uf8HvfiiM8soD/cfiPy6VHxqXSCu//PvuBSiFEhCtRL4vp0Xq+bGtSLRaNEUi/9tLBqkcBUHWZ48JqcwbR9/VUGprjLiX+rbjPi398nxnCZRgmbgSnmq7376X9VTbW3xh8bbBf9O/PbRPyFaZaJ/rs7i6J8iQiNknmSVjC+oNfBP0ir4V+JmieVEKfnRrwAxSBB24/uqsmWMbzG8NHzd1y3b/Mf3PZ5w5+HTdDklX5r0c52pYcjU6ZKmI8VrTuC5hhX4cwEUqIZpQmq5j7+EiPV4EQTDcAxLdx0nmAlh6Im0ignDt7xAd+zAnYmjewVnDQLTDGzT9Qx/Zvldr851DJi+HVgWwjCbgdqvbk3phuEHvuv7c8umFHFZyZ4dOLbvuXOJr0eN6t7eWgyabXm+4/nW7E5QY6ijGK1CYFie7VumZzkzIVDX+tapgOegscAy5w5G5HbAOuW3PKQEtjFb+ZECto1wf3ms3clXtYTrIhyOb+szkVR3umt1rKGsAOGbnmPq9uzuiGbFXmj+NSOiZ/qOoftzO2bjW689xPEBZ9ZepZUeUgrbRN1zJorB9fFVg5Sru66L5ifhvkFs5esAWa3p9nUE6WiRXuq+i6gQHydHIdShK+YTYblBYBnuUh6eEIK0Dps1nwHP8ixEgmMtLDw5YU+oqM4btWCM0u0AWSm2ITwycMtfpIO243iuY4pbq9fik5r8LPu0rO6owZFp4lqOPbfsXz+83r/KjufshMOcLKq4F9hOgDRfeHLu0t4UvUdLsDDNlnV/z3AQBF2fXXuEoA5hUOt9vqh0x/ct33AsYcuYW/oitfdcy9Z921ky7jRxQlb1e89xdSsIQMpfxAAyTNASzViify0AfH69cgBwA9NGQ5BrLBp+qq3ePbl8t0dfL+LCs/UALVSCRX2RgWHRPGAa2FadsVhpQBBLsbqthgaENMXWyb65vLuwe+IVm2nq7uzBYRLNopHasdB6Cs3Rs2eJdj1VGUxQ7KBlrYtsBl/XZ/ffaUCLCEImBF5tuLNVmODB3k1g9DiW5wae7SxVZS6YZRaOZxlorrP8pdxUW29A1LhO4Om+ac6e9iawLGPG0B20CnGD2bYnQRM+tONfE6hmoRVsBK5tIXssmG2GXqHUkRrqu3lLrVHP9dBs5M0mZHBkvoACH9tDhs0wiXgb3KIx8IitzuYEZOO7yb2Gt7brsqtd7DTBP/A1ePyHLgj+ho3l+wFaFg4HDyAW9m2M4825oKCMLNF8z3F025ZHSeeUeXtSaDDcjRwdLV0N37KGIwYUK8npfCnV4KQLhcuIYQSmg1a0ErsOHmKTr5xTmZv3HhoN37RGimL7nh0MzUcoYsL8sY55qgYzfTj8Cc92kOWoS2Smvi8dH/ZNsOjt2WFB4i89TDPQfbRKhWWoyHvDDNNmkM8MDmHbH2ai8WEGL8U8j2EjQRHS9mslOOmh4Vr2tuP4lh4AD74dWpp5UQlWaDDcoRepimv4ujlcewGxogQbUyygqcdGiz5oy747hmRKEHHFwd9090zT9Mzhfh8UFde5TwlG+nC4xCAjxUKLYMaJAAAziRpWSksNGw9/CeS6geU6gSVldE22t/Z7xIiY+xpa/QSW7vlSulLSdGdFCMmm2PB1zzNcw5I3sNBmoxKDCwsS3y8Pe2L5AWNbdjFDbch8QlPz+ebsNAXTFPXg8H1CDMdxPcbeIzgx+6I8bDBXj9NDgeIvhBxHNw1kxUhgiawX2/a69aDT5ee6VuzBGdlfQMad5/r28DQInBrSVmoRRIEaOW4wXd0wPIaryWKahvk0cIdDP0lo0Jv3tAGgTpcbwBo5DNY9ywxMH3DXgZl6pEvVrXWKSRVRrgGsEa2y3SAwfMC1FZ+pxsFfOa56wEYOmXTbDjzQDb9Omhnc+Y5JlGfb2EhXJJ1eN8DDN6hdHe+HQi7Te9zUSVK0MjnyzmxvzQ4D0YjLEF6BMXwMoOip09irQQyFZeSGgaubviNPY6I8UoOPK5CRQ3wDEeL7DGcuKDri432ck8hL2AMbYVFkmBlBNkKY43u+H5iASzI66dcO/3wKN5uwCEdkpiKfrnj4bjKW7qKuBW8pNrzUuZzIDzXYIeml2t+m5nLXDgw0k0uarjBJnalTCYYGePibqYZvurbNuPgGxQ2zvyvB0ggy/uLetvFdOVMeX3j+UIKeKxD+BVpkBpquYw+v50CxQawLJQihsPDnKgcZOoGhM27SQZEyiK+vAjtsUFyaLLS0sq1AwsK9M6Orwcz0NG65ge6arLtNoDPUxhsYjDlKcO/C9EzLMnRb8gyubePxOEKPmN+jZXlGEKAfculRiJhJSmzDMT2DEVoB1i5WgxIhM9jydV33XEh/4R4laXx7x1gmH1cgPDKQ2RL4ukSr9/5SlqqMtBQWHiNoeWS5juHJm4/jo/nli5bHRVxqh/hBkXGWg4p/I91FHJmepJ2sSnWyrEwzbENpCQ7t8RBGt/cjZisSHxlXrdCCybEcxj0emXRpddKLNDspzNwQJN+FXw8s0wsCeessJsDwfFaYvis6vt1oYX9CXeKg1kEWx0iYIktVHqwRGxIpmW7YjIuai6kime6JZ0f9qboKffON6Lrs6rfWqWOIh394odue6UI6dDCpQVKiuCj2YXVBUCWSmMj4nqu+49iGyQiYsJYv4uPRbbpbd7crS1f3jiGekVN47FtmeYBng0xuei2mEEtMZFxdQstaVzdNXcJZKs4CjTtgdW9hs7MxHFny2uW6WLicmAGyBCwpJijJjE042WoqI5wQ1eli4euJadhWoEP6PdMJ7clQXX+JFgo3VxgKDj1K90Hxtxl9x/VlbKNd83hjkqgvt9Iiki+IGoJYwMZ8yyzHcm2IOzmvfnn/5v3uVZbHuzd1rN1ddCySYt+mYLkJSxWM6hecOxj9Q8DgX5l4+JtJtoNjswEsSLjUkLJVYYaGMxJFw0ZjkWVC7C0xqCm/7qvCvtzI8hnjZYCFf07oBrovV1twXpHNGelD4U/haBDWHRdiJK4iT5INtj3O23Or4/Wq4M742i+eG0XK9zy0LjcAlgdU3e8vN9pSZFT8WvaID5OPBgXfAxgXqGrf8kyPUXOhAzwc39bTDR3igJOqfB4ecUCdzWpPl88/7LZttCB2DQB/P6r6N50iGdUXnRMtz/BMCc2P4+1uqPn5ZEQNw7GwM4gD4bhY17xdom1T/d7aTJAGx7INtDjTAY5j2SzsK5nJrQcCNhs9MPxRwXd1yzcDgFGhHoWb9Vd8OiTh6RQXN5oQ69I7RLAwjMQIRGt33TMYMUZX83C50X48m4HL1La7aetoGaUDWIF0xW9pBrKqLmQHBrZlub7LiHm/sva3tIhYtRcyiZD5ryOTEOJIj659UebJiRPp+Ba1p8rnR7N1dR1ZBABrgF7tcebaDSvfKZ4b3h9vwtkWhDHYb/mwvNUaiN3ynfL5kW6qeNauB1d9sjVLBp2b7Mteq3/dhaXK54czd9E6yIdY+NO1J91us9pT5Y9dbTZNNzAhgmL16l/1vO2q3ymeO9v7DtJ9Xweoex4isLtjGOF/tegJ5+28Sb+vCsa/oHLJD6r4kZb3PctxLAiHb7r2D+jrm3rCszgYguAGffY8z7FdF1wLtqZAqPZozg8C3wkMgAUxXX2cJTbeXhFYMPjrYtcJ9MD3AIxAmowbOrKzSBBxW0frPcO30XAIcHexpwlPzxu2f1s435vPDWzPN1aE0bmUSborn5L8sMdZIp935PwVz4VtrBFyyiltSsQg8M8Ojoqg9tyVzI5sQPxIq/hGomMFy+cJHjvYTO6DkaYnk+wQu5kNaCQOreX5pmcsnz147GyuLkLqoRm2a5g2jucmi4HtVEJIBUzbdC3DW3GPo6p/kSDM2WmfhvcF/oB+VJuXuzpp0N8u8YX8rlW/y1eMLiLyuQGFP3ZwtR8paPw+E/iuzUqnJ5cw6Xq0nLCpJbprur4erDBRxxk7xscsf766VqXo1zTNJAbwEKSMBlY90MM2ctLjm4ajByv8PhaStrWejZE2eTDom8gK9BmZ5WBIu788PMR5S1rt/9XY6PUfN+ePxoi/GYE54ndkWJbvOCuuPM6isv6oyFA3pJABbzSInI6IYySZk0ld/RGH9VWXvwFGfswry8YZpBkJSoVXcyQ0G8lUtAvP512bYxyt9S6IHDrhMf1J4uafcLr6GmX11y60wRdTJovlWp6DlHLFZtlKNjW5MePBGdWmw8sbeNmAurq5YsdhrY7K25eA19Epny7f0Q0zWHM1Q4RNVGKESkSys5z6oBWX8zmTeuKzgNMuwv7nHmLuGZFr2Ebgr4nQDUKsekOACLkCA4Fm2J6FDHZnjesNjO4qNR4I6e6UMaXjCM+6v8KYEqT2gm8CF+0vKmprjaz7u5B26gEyRw3XXXFIvIzCrAw1yQFpoXjsQeWnj7YNz2elTZZM5TdCo0i4XwOf17u2sSZf3sIuff8NUNiCHPF+DzzbCtY4OC7iT7XZZUje9GzieK7pG7JNdvZsojx9HZRcbzPTdHTLtCSvJJlzyTdA4BUlf9WIRj/b1NfcXhNh8BDfXx7raKR4c5eka66+rc8G1RoKO3DxxzHEIz5Bjm67ti7bVpymVilFFaJ2Qml103VNy5GttFXAz/B00P6a9T9p4cNnUy2dpfANvugC5k9Iju6i8WDNLb61vKpmFE2wOmkeoaUiMjC9NU5QIpQmB1Rc8vDc/qIWiw2q7u/TZ47ItHQ9fU00mUXUqbfWZtEnsiVseLbjB2iOvzmDivViNoFTfRcpoK9btuzhcNh3lZqwmX13fIJGJqXteWvuwM/hTXuI48N9GH0afqOmFrbwmF9OjYu+6/iWqa+5YiLC7iku8UftITkdqA9qcdpF1v88OcO4tmOi/8m2I7lUqjfTjNEptLtb3Ql3V2V2XkmpYlPPOKNTUxCygmzD1m3HkzyH87u7UpPRaHcfn5TwhXR8I0HyrIQWsFFMIv9TH9RSyy6y/udJnfQcy7AsU7Y7DJfKKlHdt8NnFy4/j5Ph26Yje1bnU6rcVDTKqJA/jO/pprcmx+W6/q7UwDna3yddCAPXNVcFdwLo7t8MnV24/PAorhUEvmtIPgX/GlUp4skzGvqoXkcnGK+v9GByQ2ygf5C96Ug+PWNQ+Jhm9+E3w+QALf/6qq37uuetuLu3WCkRQdkRYUQ/4/xbYZaLeiQckG+7hmW7kq1QjK79Uqv8tIdfKbdWGkJkfyuybjI82zPsNckRwHhWa+oSJXk6uaYTOK6xJlD3KMMk6LGGQxDiYOpVHIz6u33znQrq28dZfceFOrKoMg3Ht1elTV7PpwKaKsrn1JUhZLLqbqB7siYzPIPVg5EakxWZnnqQRmYitOJ0HEeaIzbmp9meUYuiISp+KGO87LG8NRmeJknKzlifFeNoAGpkdWjbuosvOkrkqIijS46qqRhLDFijA7zh4PBYEnlSaIHXmMtCazlkqekOGq7XBNGdJueQqUYOhYjv5YgDq60KKzavgylgBbA6mMCMbxueJ83doTdYq8PSANSIt7tlBlagr8kdKzwIqUMQjWgkkrllIINI8llbdS1hF38tztV/lFqFa03QZ4ys+SlwCcDxTCtw7DXhroSZe0jSWDvERZQnZ3x365AU57CMnrh/UJBeHtSxv016GppmYHiSb1UvbAI1lXxJKwjsPaFugG9gSvb5XNoZFBiVITrD+FBu6pauG5bu32JAekSSfw+fm5/qXd1umSYIO78K3tqud6eQWt+ST+wNFz3hOPvpt8EpH/DIdVhX9z3Hsm5hc3AUVZVFkbCyCqyZbB+Nwq4tbeNmjFYl5zoGm9MzmWs7vumaki8ojo+i6s1XI6Po5PLL9g18NLV1b/+WSBVYuRm6ZxiW60n25K15PUVoRZSdHpLHCyoEn6QMvlGw/w8wMr+cvOxteZ5vmNIODapQY+GDMgEGmhBjNKSRPV7Ps303CGQFE6hDsZETMmQLRxnC8qwcXaMIRyIDoTVsIO1AudEtddxxO9ol6HnrYu/6QJfOURVPVTGKupi4DHmBha1pR2oHDMsyT+4vZawVyVclHJFbmljIuItkN7B1x1gRbHoeV2j9Hj6qShcFjh882DQD03dsufNfi0qZ0I9DwkQiPSK68NmVI+1ouKILmYc4+HN4VmIR2zA1QMWd9jzTNCxvTfrIaY6OcVEo1vdoSHwPDMNHY5QfyLoFXtNzSctEI34hSpHEAMb1h9YN19ADabdyKqaUCdbSMCQSiwUpkeFbuu7K2se4UqPh+BBolIxz5UgaQONfMfZswzNdW9ZqmtCVRTgca+M9reAQNQ6RGzZAtw1T96X5+VDsEed+hcljIuSfndmm6/m+tH1bzgJavTXhBMYRx3fddhzbs6WOdfiKk4Z/U4myPqixxOW+7ttye6hq7AgQ4+seTt4qd9zHvjiqcdPDNJLd0PGCQFq4wYqf5rpWmKaqhDBpaGJDG42v4Qe+60vVJwIqK5/wFSx1WWMC5Lt8BrbvynPmoff5FDgNGuzzTZyk+ZZr2bYtzb+jIegYJkrciunw04HEd3+xLUva3beGmzL7FKtGThfTyN0XxzUs05G65TLcW1SJKQ64scj3hucj41zuyUNve1FJxkTyh2iObeqW5ftSN4o7e4wKMTVAxd2WwYN4YAWG1L09daJxtASJRN1A5KCVXID+L5ccfPivFjkdRCMH7ZZv2saaRLoLTHGFaGJD42+r+LZnB06wgSWuHmlMgHzXIsfz9cCRFs2ys62uEFUicbiREYWMcLmj92AbTCWSeOBGrCjdNy3DluZQ2ducU4irPqiRXIuB5eFeJ31zTiF2BIjxHRyGy5EWWbPdnOtE6FeJIja0kTMs39Mt3ZU1OpE4ZfXf9uhv+/Zve3VOE64RyqaB8i1RtF62zEBarLIxKrHf4F4Nh/oJLmmk/IvuluX4gWlJu8w9rZcKdGoxvZwYEC0XzaamIWuiGGNSmX3TCSKF9lJNHS01TceWFipzVCcVWidMaaXYisEKPMMPXGlX7Ivk8RSWlxzfi4yyQ1wFcmq+29ffqTBe9nFW33Ghcnu5bxq6L+9+nBCbCuimKJsTfT3QfR2vaGWtZpuAHfh84KSKIhJM1d8pWCPnJ4gm15AWjrlL0zXGiTJmY48xNkIuebaJQ2bpsvwQu9yVOaJBw3l81XC46xHHgMe/a+m5uuf70oKPtLRF+fO5zLSiROJV44yBjWtJB27gubYj7Uo6q48qMROwO+dkcBvH9H3bMGQtPNj6pRhfDGz8I7zAw8lMpF2PaQnrDK+qnMZ0OWPD468mAt/B2Z9kbbwMaUPP12FCQjWysjLJY4AcSwyMQ5cY0rxgk1OUXpCtGz6owBdBU49nU8cxrh24yICVNoxdqdHK53OsRJppiiAKFv+A1HId39cdaWm5Ozwp5N9CMyXq2+KZruNK2ylumCIX8pENfc5O2EPiiJ5LTo+qqdgUzhHXc2yQWY4NO2w154BJmHYSHOOlSHg67BNsW5/zeLsFQOc0EEGsfhNAOZb31DUDHdgJW5zEbZRxLolTqujrZmD4NnAqiy6LaXK6fNHqD8qQxgA1shWEvUKgj3W6FG0XaWbIjEhwVEPXkcr4wNeVKUZqVdY6qmyqQxEfHP9s0NN9pEKw1hi3m6kywDNA8Q+iA3yjxgS+311R1IkhS44mio0posPG9kCNjNaeZxk2dJj9Hkfx6XLUNj0eYbI0hMVf+/huYDiODbt536OpMgsrT52kTGKlFIoNjb+BgxTKRcsgmXQpRM+U9uim45quDxyj+UpHtdURa1VLFeVlK5+NPjUcWHyzyPM8P7BkmEWEJjxr1JPsQxhttWwe0sSENXK5z9Fdy/CAj8iuPDXWSJPwZ6tlcp8oHi5+Vj3DdhwP+jrWkKjqqS33rHhMDYDxo3c5PqIK+I7RiBmgBk8cWPxoJrrpeY7rw25YMWhSjZ/JxYhjejayt2XNcEwjRCGO2NB4dLmBaxiWZUlY7V7Zwl6RdIhRpOQP4SUtlWJuGuZITF/TwpHRfamjVvOISqT1MPFXwI7jBo4ZSFU0/FEpleoCGjmmsUyc+B3Y66O3RlGHlUk+HFv3DR/4ntqVjjw+4SGyHi0VMyzHsPG3BALfdJwA+J4xe1FXxfBVgysOLO5NNcfCQat1WRZTF45iI/UING4gQTewPV2XtrLrQtoyhsQYVSJxJAw7sJC56QLHA+IQpdDCjoeLv2IJHB8HjpfX/+jNC+0SbpYrZmpjpYttZHcFGU2m5dgSDlYY6XU21it2Cp3Ji9nI7kadD9gTiKKI/FSHHhoQ333dME2cigCemfrzNVV888Uhrm5CK2Ai9BF2vhuCHLkAYHrYe0rCiCVC4bZDlyCFE2OYhZOyBIYuoX9OULjpRQpxEsUCejqG67iWo0tYEg1oDI9JPVFp53Brq4zFHwvfWPhB39UD24V14J6hgOoROAKTe50Rx862bs9hmtzn4WbxPsRJpHGOxJzznMDypWwTkvu1OL63hg9c/polW49+16u0LFTcLWnHsNBYZ92Io3rbNzyE5+29RzmEsSCOuY7qjm0jRbuRjm3bN3k6NrG7Ybmeiey7G6lY03RKUtVDx79q5wW+6aJ5QBppzSiqSiek8fBPHE0ncHQdOAxdlxglTIkrL0Img2bgSzqebQDnwWMpjCrECJoBFjIAbKQzUrz7+xfjwsMhr/JXhNHT1j6PzEtxLIDcPEn4oAON3FLc1XvMbe6SPeRqusvpbuCZPnBEbNLlLnjRVbS/bN7rahjd36eCBfmubwSuAzuDtedPu7B4wv/W5tplq0xkLZ7qu+KJ/OihGvHDRqOTFQTALqJslhSkaDq9q63baM4HdjDi8LNNHxvlZ2oM8mwP/aPbsJ4enF52zpPPCpLUxcXdU8HRi3UT+ISVPxopyNJlMjo4djDGoWRgJ/wrSVfHryRTYTBi4BlLBKxbfmADJ/tjkfO3S3zZ7BoIhyAKE3/V6hvIXgR2O2NRpMZ8z8DDv/JuebZtOsCeCyxuNl2/cvgRC8DvOoFtmboL65rH5qjjeKoaVUNo/NDNgY1vGQEfVXFGbKVoavHwD5R13fc94AykLGpUMYuYiEaWHq5uuY4HfFo8MqEpRRGFibsDYpuGgZ32bzGhKUXPtLFooHHaCnzAoKtFGUY4dC0e/3bx8R6njKAuCNQnMxFOcnrr6b/Chn+pEVVkCSHkGwSu6Rum58IN3RR/20Q2Y9AkFMPMcXC6FA/wjGhSmba6FCOoScKXYZDBZFiuC3jKTVFXueVq1VcKMDVEMzK/Obrt4NTGMok5P91865pLyxULd08WT2hWADfj14yc07DEp5y7elI77mtHjc2IafDg39uprYdqJJqioeuWCeh/U5PUBCWrO/smzuUtQZ3YY0M4I5cU0BLWtuCMIQYxylAytboIdN3wTQ969m7JyPMsx5OAEoT0wIx4TqJB14G84MpgRRlGpq/WGZ4ZeBagOyRNRxgX2vF484U5ixAaCv8GgR94puMDeinQjNwnp0NyetwmmSmLFxYg/vapgaPFeIAJp3rsZFmZZuFBCWJoLPwAFfiqtwe5J9jj5LncMLYAkxkWIu4OhYP7kw94yk7TE91/ijUSwzs+IVKU6FVcVPyQMGiJpDse4O2uHk/RES9LlJiceljGshA5vuUEgPHWe6Q8JakSg00XCH/0tSzPAsyhwTL7w7SM8xMSrB3DSAVm+LBGzBrXcGzXBzxLZ1FVZR5Uh6IuHK4zvac7Nr6AJZeYC84M8BypYeBwMHF7GRpuXNc0AR2bWRzl4emQHbfI087naICJfw6KOphleIAhJmiOHje63M7i5lHwQruD9zkxM5I42ci7mUWJmGMzmq9sz9Q9wMgtNCNoKtDS8FmNPZk+GO4OJ1phIlUBzGXcIyUuig0yLzApoaDwp2vd9xzUdTy4K0o9Si5pmWinuMS39ZQghgGIvzAwA8f0IAMhs9jZ8phgwMz0OYER2Dg9hy1tuUQaR8O79Jv44LDY4YHiH1q6uhXo0jaz8vB3TaHxZghn5OwtsALT0AHjZtPUFNklj2Itzy63z3jG4oaBZyR8IY64Gpiy1Kb6pCWnByU2hgdo+LGdDN9BkzfgVVqaFyo1pALMMPDwrV/ftl3DBHRmo7mhL9hve9rfoYgPa8TccXycikvWyPM1TVVZVtJQuDvEqFvZNlo8SSREmdVkH8xIfDTDQUaOIWvxRDS3vXd5DE9o3lRi3BmHxjcJsWO/51qyhmcOLIV0SwDgyPaFbeHsT9DsIYWve2DlAbSx0x8C0nbCIZ4RjxvL0c0AnJsoy9v1V3hSgyKMCf8chTVyYuPhXN8eYKqMmqr2PjZPybe4P9qS1r2dLQBwLNax6RmGAxjAcA59W+mcMH0C/iyeb7qAiRIF6asikJ1un/VvFoU9kCNxqUzLtXXEpTCNx3Cz8FJ0nmW0WgnzJKtkfDlF1RP/jn7+jODjUS2cDDilGZ6hm34QzLh3gqB8C7W/whypvG46tmXPsDvT+LB1hGtS1SJEwmKNfIkJ0NK65gyMXEvIMm20xjd18Sksj8PDMb57Ko+p+krQB8uPS2OjQcBxGX7GZX5h9oJLmaHHdl/Ds4ZzazJ7xOmSpuODj4dDlgQMH3ChYhG11VUFkmcozAteHLcJJK5h+q7vM/wtluNg9o4pRhw98E20uBluGIgAIQAK9GzEu0syhcDSDcvyraGHmziAZQUbruGYJvZjXlY035KeKNnUfd2yfZNxN0OgYNQB7/GIg9Zm2RE7VxISltFvWGhRawYuY0gWwfIZSVnYFX0j8B3XZBzMCRe8TN8MpG0e6+KnQLnJUl3T0dBjoq423MIUKPWcJwtra7imY6IKM/a/BMqtFmfL9ApnofUdi+GZKVLu85lzrjFRqm0HqEwdLRD/68U//i8c44ml=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA