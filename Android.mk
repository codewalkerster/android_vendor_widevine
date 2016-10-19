# widevine prebuilts only available for ARM
ifneq ($(filter arm arm64,$(TARGET_ARCH)),)

LOCAL_32_BIT_ONLY := true
include $(call all-subdir-makefiles)

endif # TARGET_ARCH == arm
