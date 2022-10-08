#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from BV9100 device
$(call inherit-product, device/blackview/BV9100/device.mk)

PRODUCT_DEVICE := BV9100
PRODUCT_NAME := omni_BV9100
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV9100
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-hct

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k65v1_64_bsp-user 9 PPR1.180610.011 eng.releas.20190824.110901 release-keys"

BUILD_FINGERPRINT := Blackview/BV9100_EEA/BV9100:9/PPR1.180610.011/1563181284:user/release-keys
