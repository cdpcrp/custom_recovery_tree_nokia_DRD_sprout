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

# Inherit from DRD_sprout device
$(call inherit-product, device/hmd/DRD_sprout/device.mk)

PRODUCT_DEVICE := DRD_sprout
PRODUCT_NAME := omni_DRD_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 5.4
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="DoctorDoom_00WW-user 12 SKQ1.220119.001 00WW_3_460 release-keys"

BUILD_FINGERPRINT := Nokia/DoctorDoom_00WW/DRD_sprout:12/SKQ1.220119.001/00WW_3_460:user/release-keys
