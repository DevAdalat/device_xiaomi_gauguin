#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from gauguin device
$(call inherit-product, device/xiaomi/gauguin/device.mk)

# Inherit some common ProjectElixir stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Elixir stuffs
ELIXIR_BUILD_TYPE := UNOFFICIAL
ELIXIR_MAINTAINER := Adalat Kumar
IS_PHONE := true
TARGET_APERTURE_CAM := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := gauguin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_gauguin
PRODUCT_MODEL := M2007J17G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := gauguin

