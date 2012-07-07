LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_ARCH),arm)

#####################################################################
# libdrmwvmplugin.so
include $(CLEAR_VARS)

LOCAL_MODULE := libdrmwvmplugin
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/drm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

#####################################################################
# libwvm.so
include $(CLEAR_VARS)

LOCAL_MODULE := libwvm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_SRC_FILES := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional
include $(BUILD_PREBUILT)

endif

