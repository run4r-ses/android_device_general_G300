#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 TeamWin Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

# A/B Support
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot Control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl.recovery \
    android.hardware.boot@1.0-service \
    bootctrl.mt6765 \
    bootctrl.mt6765.recovery

# Dynamic Partitions & Fastbootd
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Keymaster / Gatekeeper / Crypto Packages
PRODUCT_PACKAGES += \
    libbinder \
    libkeymaster4 \
    libkeymaster4support \
    libkeymaster_messages \
    libkeymaster_portable \
    libpuresoftkeymasterdevice \
    libsoftkeymasterdevice \
    libgatekeeper

# Update Engine Sideload
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# Shipping API Level (Android 10 = 29)
PRODUCT_SHIPPING_API_LEVEL := 29
