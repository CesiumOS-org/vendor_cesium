# Safetynet
TARGET_FORCE_BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys

include vendor/cesium/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/cesium/config/BoardConfigQcom.mk
# Namespace for fwk-detect
TARGET_FWK_DETECT_PATH ?= hardware/qcom-caf/common
PRODUCT_SOONG_NAMESPACES += \
    $(TARGET_FWK_DETECT_PATH)/fwk-detect
endif

include vendor/cesium/config/BoardConfigSoong.mk

ifneq ($(TARGET_USES_PREBUILT_CAMERA_SERVICE), true)
PRODUCT_SOONG_NAMESPACES += \
    frameworks/av/camera/cameraserver \
    frameworks/av/services/camera/libcameraservice
endif
