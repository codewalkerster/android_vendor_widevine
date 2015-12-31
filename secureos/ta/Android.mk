LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
ifeq ($(TARGET_ARCH),arm)

LOCAL_MODULE := edef8ba9-79d6-4ace-a3c827dcd51d21ed
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/teetz
LOCAL_MODULE_SUFFIX := .ta
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)

LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

endif
endif
