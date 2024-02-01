#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from walleye device
$(call inherit-product, device/google/walleye/device.mk)

PRODUCT_DEVICE := walleye
PRODUCT_NAME := lineage_walleye
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2
PRODUCT_MANUFACTURER := google

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="walleye-user 8.0.0 OPD1.170816.025 4424668 release-keys"

BUILD_FINGERPRINT := google/walleye/walleye:8.0.0/OPD1.170816.025/4424668:user/release-keys
