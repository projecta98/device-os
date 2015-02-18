RT_DYNALIB_MODULE_NAME = rt-dynalib
RT_DYNALIB_MODULE_PATH ?= $(PROJECT_ROOT)/$(RT_DYNALIB_MODULE_NAME)
include $(call rwildcard,$(RT_DYNALIB_MODULE_PATH)/,include.mk)

RT_DYNALIB_BUILD_PATH_EXT = $(ARCH)
RT_DYNALIB_LIB_DIR = $(BUILD_PATH_BASE)/$(RT_DYNALIB_MODULE_NAME)/$(RT_DYNALIB_BUILD_PATH_EXT)
RT_DYNALIB_LIB_DEP = $(RT_DYNALIB_LIB_DIR)/lib$(RT_DYNALIB_MODULE_NAME).a

INCLUDE_DIRS += $(RT_DYNALIB_MODULE_PATH)/inc

# have to disable malloc/free builtins
CFLAGS += -fno-builtin

