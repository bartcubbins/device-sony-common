ifneq ($(wildcard device/sony/common/hardware/qcom/custom.mk),)
    include device/sony/common/hardware/qcom/custom.mk
else
# Board platforms lists to be used for
# TARGET_BOARD_PLATFORM specific featurization
QCOM_BOARD_PLATFORMS += sdm845 $(TRINKET) $(LITO) $(MSMNILE) $(KONA) $(LAHAINA) $(HOLI) $(TARO) $(KALAMA)

# Some supported platforms need a different media hal
# This list selects platforms that should use the latest media hal
# All other platforms automatically fallback to the legacy hal
QCOM_NEW_MEDIA_PLATFORM := sdm845 $(TRINKET) $(LITO) $(MSMNILE) $(KONA) $(LAHAINA)  $(HOLI) $(TARO) $(KALAMA)

#List of targets that use master side content protection
MASTER_SIDE_CP_TARGET_LIST := sdm845 $(TRINKET) $(LITO) $(MSMNILE) $(KONA) $(LAHAINA) $(HOLI) $(TARO) $(KALAMA)

QCOM_MEDIA_ROOT := vendor/qcom/opensource/media/sm8250

OMX_VIDEO_PATH := mm-video-v4l2

SRC_CAMERA_HAL_DIR ?= vendor/qcom/opensource/camera
SRC_DISPLAY_HAL_DIR := vendor/qcom/opensource/display/sm8250
SRC_MEDIA_HAL_DIR := $(QCOM_MEDIA_ROOT)
TARGET_KERNEL_VERSION := $(SOMC_KERNEL_VERSION)

include device/sony/common/hardware/qcom/utils.mk

endif
