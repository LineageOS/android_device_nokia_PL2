#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nokia/PL2

# Inherit from nokia sdm660-common
-include device/nokia/sdm660-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_VARIANT_RUNTIME := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := PL2,PL2_sprout,Plate2

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true
AUDIO_FEATURE_ENABLED_GEF_SUPPORT := true
AUDIO_FEATURE_ENABLED_SSR := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm630

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG += vendor/nokia/PL2.config

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/nokia/PL2/BoardConfigVendor.mk
