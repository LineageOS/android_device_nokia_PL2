#
# Copyright (C) 2019 The LineageOS Project
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
#

DEVICE_PATH := device/nokia/PL2

# Inherit from nokia sdm660-common
-include device/nokia/sdm660-common/BoardConfigCommon.mk

# Architecture
TARGET_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT := cortex-a53

# Assert
TARGET_BOARD_INFO_FILE := device/nokia/PL2/board-info.txt

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm630

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := nokia_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 262144

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SELinux
SELINUX_IGNORE_NEVERALLOWS := true
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
