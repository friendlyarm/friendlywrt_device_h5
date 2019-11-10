#!/bin/bash

TARGET_PLAT=h5
TARGET_ARCH=arm64
CROSS_COMPILER=aarch64-linux-gnu-
TARGET_OSNAME=friendlywrt_4.14_arm64

# FriendlyWRT
# 

TARGET_FRIENDLYWRT_CONFIG=config_h5
FRIENDLYWRT_SRC=friendlywrt
FRIENDLYWRT_PACKAGES+=(packages/pkg1)
FRIENDLYWRT_PACKAGES+=(packages/pkg2)
FRIENDLYWRT_FILES+=(device/friendlyelec/h5/default-settings)
FRIENDLYWRT_FILES+=(device/friendlyelec/h5/common-files)

# U-boot
# 

TARGET_UBOOT_CONFIG=nanopi_h5_defconfig

# Kernel
# 

TARGET_KERNEL_CONFIG=sunxi_arm64_defconfig
TARGET_KERNEL_DTB=sun50i-h5-nanopi*.dtb

# Misc
# 
FRIENDLYWRT_ROOTFS=build_dir/target-aarch64_cortex-a53_musl/root-sunxi
TARGET_IMAGE_DIRNAME=friendlywrt_4.14_arm64
TARGET_SD_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_NanoPi-R1S_aarch64f_sd.img
TARGET_EFLASHER_RAW_FILENAME=FriendlyWrt_$(date +%Y%m%d)_NanoPi-R1S_aarch64_eflasher.img


