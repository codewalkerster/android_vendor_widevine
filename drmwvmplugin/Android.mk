LOCAL_PATH:= $(call my-dir)

ifeq ($(TARGET_ARCH),arm)

########################
# Feature file for clients to look up widevine drm plug-in

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.widevine.software.drm.xml
LOCAL_SRC_FILES := $(LOCAL_MODULE)
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := ETC

# This will install the file in /system/etc/permissions
#
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions

include $(BUILD_PREBUILT)

########################
# Dummy library used to indicate availability of widevine drm

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.widevine.software.drm
LOCAL_SRC_FILES := src/StubLib.java
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_CLASS := JAVA_LIBRARIES

include $(BUILD_JAVA_LIBRARY)

# invoke Android.mk files in subdirs
include $(call all-makefiles-under,$(LOCAL_PATH))

endif
