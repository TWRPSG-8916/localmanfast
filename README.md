# Pitch Black Recovery 10 WIP
Kernel Way to big = recovery to big not flash

For building Pitch Black Recovery 10 for the Samsung Galaxy Tab E 9.6 & Samsung Galaxy Tab E 8.0 
#gtelwifiue & gtesqltespr

# To build with the kernel source
located your BoardConfig.mk located in device/samsung/gtelwifiue or gtesqltespr/ and replace everything # Kernel until # Ramdisk compression
```
# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive buildvariant=userdebug
# TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
# TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dt.img
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
# BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/samsung/msm8916
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_gtelwifi_usa_defconfig
# KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/gtelwifiue/bootimg.mk
```