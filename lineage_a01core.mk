#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a01core device
$(call inherit-product, device/samsung/a01core/device.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="MT6739" \
    RISING_MAINTAINER="Rik"

PRODUCT_NO_CAMERA := true
TARGET_ENABLE_BLUR := true

PRODUCT_DEVICE := a01core
PRODUCT_NAME := lineage_a01core
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M013F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a01coredd-user 10 QP1A.190711.020 M013FDDU7AWA1 release-keys"

BUILD_FINGERPRINT := samsung/a01coredd/a01core:10/QP1A.190711.020/M013FDDU7AWA1:user/release-keys
