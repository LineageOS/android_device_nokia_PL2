#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Vendor blobs
$(call inherit-product, vendor/nokia/PL2/PL2-vendor.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-hmd

# Init
PRODUCT_PACKAGES += \
    init.PL2.target.rc

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service \
    android.hardware.nfc@1.2-service.samsung \
    com.android.nfc_extras \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml \
    frameworks/native/data/etc/android.hardware.nfc.uicc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.uicc.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml

# Inherit from nokia sdm660-common
$(call inherit-product, device/nokia/sdm660-common/common.mk)
