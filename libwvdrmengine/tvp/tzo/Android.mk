LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifeq ($(LOCAL_OEMCRYPTO_LEVEL),1)
ifeq ($(TARGET_ARCH),arm)

LOCAL_MODULE := wvcenc
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .tzo
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)

LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)
endif
endif
