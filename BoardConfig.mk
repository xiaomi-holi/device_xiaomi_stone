#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/stone

# Inherit from sm6375-common
include device/xiaomi/sm6375-common/BoardConfigCommon.mk

# Build Broken
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_stone
TARGET_RECOVERY_DEVICE_MODULES := init_stone

# ODM Manifest
ODM_MANIFEST_SKUS += nfc
ODM_MANIFEST_NFC_FILES := $(DEVICE_PATH)/manifest_nfc.xml

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := moonstone,sunstone

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/stone/BoardConfigVendor.mk
