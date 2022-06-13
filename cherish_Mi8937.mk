#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Inherit from Mi8937 device
ROM := cherish
$(call inherit-product, device/xiaomi/Mi8937/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Mi8937
PRODUCT_NAME := cherish_Mi8937
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MSM8937
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Inherit some props from CherishOS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=ꪖ​ꪀ𝘴ꫝ|邪惡的

# Stuff
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="land-user 6.0.1 MMB29M V10.2.2.0.MALMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/land/land:6.0.1/MMB29M/V10.2.2.0.MALMIXM:user/release-keys"
