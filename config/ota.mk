ifneq ($(filter OFFICIAL BETA,$(CUSTOM_BUILD_TYPE)),)

PRODUCT_PACKAGES += \
    Updater

PRODUCT_COPY_FILES += \
    vendor/cesium/config/permissions/org.cesium.ota.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/org.cesium.ota.xml

endif
