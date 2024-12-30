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

# Inherit from P683S10 device
$(call inherit-product, device/zte/P683S10/device.mk)

PRODUCT_DEVICE := P683S10
PRODUCT_NAME := omni_P683S10
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE 9000N
PRODUCT_MANUFACTURER := zte

PRODUCT_GMS_CLIENTID_BASE := android-zte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6873v1_64-user 10 QP1A.190711.020 20200805.202013 release-keys"

BUILD_FINGERPRINT := ZTE/CN_P683S10/P683S10:10/QP1A.190711.020/20200805.202013:user/release-keys
