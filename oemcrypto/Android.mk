LOCAL_PATH:= $(call my-dir)

ifneq ($(filter arm arm64,$(TARGET_ARCH)),)

#####################################################################
# libdrmwvmplugin?.so
include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk

ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
LOCAL_MODULE := libdrmwvmplugin_L$(LOCAL_OEMCRYPTO_LEVEL)
endif

ifeq ($(LOCAL_OEMCRYPTO_LEVEL),3)
LOCAL_MODULE := libdrmwvmplugin
endif

LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/lib/drm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_STRIP_MODULE := false

LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

#####################################################################
# libwvm?.so
include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk

ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
LOCAL_MODULE := libwvm_L$(LOCAL_OEMCRYPTO_LEVEL)
endif

ifeq ($(LOCAL_OEMCRYPTO_LEVEL),3)
LOCAL_MODULE := libwvm
endif

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_STRIP_MODULE := false

LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

endif

