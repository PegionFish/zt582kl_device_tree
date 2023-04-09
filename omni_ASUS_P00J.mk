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

# Inherit from ASUS_P00J device
$(call inherit-product, device/asus/ASUS_P00J/device.mk)

PRODUCT_DEVICE := ASUS_P00J
PRODUCT_NAME := omni_ASUS_P00J
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_P00J
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-verizon

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="VZW_ASUS_P00J-user 8.0.0 OPR1.170623.032 VZW_ASUS_P00J-V5.1.5 release-keys"

BUILD_FINGERPRINT := asus/VZW_ASUS_P00J/ASUS_P00J:8.0.0/OPR1.170623.032/VZW_ASUS_P00J-V5.1.5:user/release-keys
