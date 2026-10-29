#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP 64-bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from TWRP common configuration (twrp-12.1)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from G300 device configuration
$(call inherit-product, device/general/G300/device.mk)

PRODUCT_DEVICE := G300
PRODUCT_NAME := twrp_G300
PRODUCT_BRAND := GM
PRODUCT_MODEL := G300
PRODUCT_MANUFACTURER := General Mobile

PRODUCT_GMS_CLIENTID_BASE := android-telpa-trev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=G300 \
    PRODUCT_NAME=G300 \
    PRIVATE_BUILD_DESC="full_v730_64-user 10 QP1A.190711.020 Q.G300.2011.A release-keys"

BUILD_FINGERPRINT := GM/G300/G300:10/QP1A.190711.020/Q.G300.2011.A:user/release-keys

