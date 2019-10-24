ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

CUSTOM_OTA_VERSION_CODE := ten

CUSTOM_PROPERTIES += \
    org.cesium.ota.version_code=$(CUSTOM_OTA_VERSION_CODE) \

PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/org.cesium.ota.xml:system/etc/permissions/org.cesium.ota.xml

endif
