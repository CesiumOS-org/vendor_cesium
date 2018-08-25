# Kernel
include vendor/cesium/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/cesium/config/BoardConfigQcom.mk
endif

# Soong
include vendor/cesium/config/BoardConfigSoong.mk
