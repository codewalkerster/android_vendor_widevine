CUR_PATH := vendor/widevine


########################################################
#add wv-l3 drm function
#######################################################
PRODUCT_COPY_FILES += vendor/widevine/lib/arm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so \
                     vendor/widevine/lib/arm/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
                     vendor/widevine/lib/arm/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
                     vendor/widevine/framework/arm/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
                     vendor/widevine/framework/arm/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml

# if not set,default to 10M
PRODUCT_PROPERTY_OVERRIDES += ro.com.widevine.cachesize=16777216
