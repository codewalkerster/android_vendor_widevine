LOCAL_PATH:= $(call my-dir)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifeq ($(TARGET_ARCH),arm)
ifeq ($(LOCAL_OEMCRYPTO_LEVEL),3)

#####################################################################
# libdrmdecrypt.so
include $(CLEAR_VARS)
LOCAL_MODULE := libdrmdecrypt
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := L$(LOCAL_OEMCRYPTO_LEVEL)/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)
endif
endif

