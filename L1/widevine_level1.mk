CUR_PATH := vendor/widevine/L1
$(warning Android.mk BOARD_WIDEVINE_OEMCRYPTO_LEVEL:$(BOARD_WIDEVINE_OEMCRYPTO_LEVEL))

ifeq ($(BOARD_WIDEVINE_OEMCRYPTO_LEVEL), 1)
$(warning WidevineL1 PRODUCT_COPY_FILES)
PRODUCT_COPY_FILES += \
	$(CUR_PATH)/libs/libRkWvClient.so:/system/lib/libRkWvClient.so \
	$(CUR_PATH)/libs/lib64/libRkWvClient.so:/system/lib64/libRkWvClient.so \
	$(CUR_PATH)/libs/libwvdrmengine.so:/system/vendor/lib/mediadrm/libwvdrmengine.so \
	$(CUR_PATH)/libs/liboemcrypto.so:/system/vendor/lib/liboemcrypto.so \
	$(CUR_PATH)/libs/c11fe8ac-b997-48cf-a28de2a55e5240ef.ta:/system/lib/optee_armtz/c11fe8ac-b997-48cf-a28de2a55e5240ef.ta \
	$(CUR_PATH)/libs/rk_store_keybox:/system/bin/rk_store_keybox
endif
