#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

INFINITY_BUILD_TYPE := OFFICIAL
INFINITY_MAINTAINER := "IczYn"
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
TARGET_BUILD_GOOGLE_TELEPHONY := true
TARGET_BUILD_VIMUSIC := true
USE_MOTO_CALCULATOR := false

TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_PIXEL_BOOT_ANIMATION_RES := 1440
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_6 := true
TARGET_PIXEL_STAND_SUPPORTED := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true
# BUILD_GOOGLE_CONTACTS := true
# BUILD_GOOGLE_DIALER := true
# BUILD_GOOGLE_MESSAGE := true


# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_raven.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)

include device/google/raviole/raven/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_NAME := infinity_raven

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/raven/raven:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
