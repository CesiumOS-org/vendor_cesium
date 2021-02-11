# Versioning System
CESIUM_VERSION := v3.1.2

ifneq ($(SIGNING_KEYS),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(SIGNING_KEYS)/releasekey
endif

# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_BUILD_DATE_UTC := $(shell date -u '+%Y%m%d-%H%M')

CUSTOM_PLATFORM_VERSION := 11.0

TARGET_PRODUCT_SHORT := $(subst cesium_,,$(CUSTOM_BUILD))

CESIUM_MOD_VERSION := CesiumOS-$(CESIUM_VERSION)-$(CUSTOM_BUILD)-$(CUSTOM_BUILD_DATE_UTC)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := 11

CUSTOM_PROPERTIES := \
    org.cesium.version=$(CUSTOM_VERSION_PROP) \
    org.cesium.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    org.cesium.build_type=$(CUSTOM_BUILD_TYPE) \
    org.cesium.build_version=$(CESIUM_VERSION)
