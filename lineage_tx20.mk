#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from tx20 device
$(call inherit-product, device/sprd/tx20/device.mk)

PRODUCT_DEVICE := tx20
PRODUCT_NAME := lineage_tx20
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := tx20_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tx20_q20-user 9 PPR1.180610.011 34315 release-keys"

BUILD_FINGERPRINT := SPRD/tx20_q20/tx20:9/PPR1.180610.011/08241521:user/release-keys
