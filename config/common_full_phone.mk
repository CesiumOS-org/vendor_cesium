# Telephony

IS_PHONE := true

# Telephony packages
PRODUCT_PACKAGES += \
    Stk \
    CellBroadcastReceiver \
    Dialer \
    Contacts \
    messaging

# Tethering - allow without requiring a provisioning app
# (for devices that check this)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    net.tethering.noprovisioning=true

# Inherit full common CesiumOS stuff
$(call inherit-product, vendor/cesium/config/common_full.mk)
