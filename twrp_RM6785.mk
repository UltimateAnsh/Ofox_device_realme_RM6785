#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from RM6785 device
$(call inherit-product, device/realme/RM6785/device.mk)

PRODUCT_DEVICE := RM6785
PRODUCT_NAME := twrp_RM6785
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 7/Narzo 20 Pro/Narzo 30 4G
PRODUCT_MANUFACTURER := realme

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true
