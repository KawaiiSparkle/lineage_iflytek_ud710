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

# Inherit from ud710_2h10 device
$(call inherit-product, device/sprd/ud710_2h10/device.mk)

PRODUCT_DEVICE := ud710_2h10
PRODUCT_NAME := lineage_ud710_2h10
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := ud710_2h10_native
PRODUCT_MANUFACTURER := sprd

PRODUCT_GMS_CLIENTID_BASE := android-sprd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ud710_2h10_native_noorca-user 9 PPR1.180610.011 30509 release-keys"

BUILD_FINGERPRINT := SPRD/ud710_2h10_native_noorca/ud710_2h10:9/PPR1.180610.011/07290953:user/release-keys
