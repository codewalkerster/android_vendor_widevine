LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
ifneq ($(filter arm arm64,$(TARGET_ARCH)),)

LOCAL_MODULE := edef8ba9-79d6-4ace-a3c827dcd51d21ed
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 26 && echo OK),OK)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/teetz
else
LOCAL_MODULE_PATH := $(TARGET_OUT)/lib/teetz
endif
LOCAL_MODULE_SUFFIX := .ta
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_STRIP_MODULE := false
LOCAL_MODULE_TAGS := optional

LOCAL_32_BIT_ONLY := true
include $(BUILD_PREBUILT)

endif
endif
