LOCAL_PATH:= $(call my-dir)
include $(TOP)/vendor/widevine/oemcryptolevel.mk
ifneq ($(filter arm arm64, $(TARGET_ARCH)),)

#####################################################################
# libdrmdecrypt.so
include $(CLEAR_VARS)
LOCAL_MODULE := libwvdrmengine
LOCAL_MODULE_PATH := $(TARGET_OUT)/vendor/lib/mediadrm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true
LOCAL_STRIP_MODULE := false

LOCAL_32_BIT_ONLY := true

LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif # TARGET_ARCH == arm

