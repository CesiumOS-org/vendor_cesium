ifneq ($(filter OFFICIAL BETA,$(CUSTOM_BUILD_TYPE)),)

PRODUCT_PACKAGES += \
    Updater

endif
