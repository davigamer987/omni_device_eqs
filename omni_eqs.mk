#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from eqs device
$(call inherit-product, device/motorola/eqs/device.mk)

PRODUCT_DEVICE := eqs
PRODUCT_NAME := omni_eqs
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 30 ultra
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_RECOVERY_IMAGE := true


PRODUCT_GMS_CLIENTID_BASE := android-motorola-rvo3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="eqs_ge-user 12 S3SQ32.16-53-13 c486e-220b5b release-keys"

BUILD_FINGERPRINT := motorola/eqs_ge/msi:12/S3SQ32M.16-53-13/c486e-220b5b:user/release-keys
