# widevine prebuilts only available for ARM
ifeq ($(TARGET_ARCH),arm)

include $(call all-subdir-makefiles)

endif # TARGET_ARCH == arm
