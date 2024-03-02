#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from miami device
$(call inherit-product, device/motorola/miami/device.mk)

PRODUCT_DEVICE := miami
PRODUCT_NAME := omni_miami
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 neo
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miami_g-user 11 T1SSMS33.1-121-4-1 da7d00 release-keys"

BUILD_FINGERPRINT := motorola/miami_g/miami:11/T1SSMS33.1-121-4-1/da7d00:user/release-keys
