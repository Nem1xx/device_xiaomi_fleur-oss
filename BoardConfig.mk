#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/fleur

# A/B
AB_OTA_UPDATER := true
BOARD_USES_RECOVERY_AS_BOOT := true

AB_OTA_PARTITIONS := \
    boot \
    dtbo \
    system \
    system_ext \
    product \
    vendor \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fleur

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_fleur
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_fleur

# Kernel
BOARD_PREBUILT_DTBOIMAGE := $(COMMON_PATH)/prebuilt/dtbo.img

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := mediatek_dynamic_partitions
BOARD_MEDIATEK_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext product vendor
BOARD_MEDIATEK_DYNAMIC_PARTITIONS_SIZE := 9122611200

# Props
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit the proprietary files
include vendor/xiaomi/fleur/BoardConfigVendor.mk
include device/xiaomi/mt6781-common/BoardConfigCommon.mk
