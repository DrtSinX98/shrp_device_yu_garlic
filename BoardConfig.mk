LOCAL_PATH := device/yu/garlic

# Platform
TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_CORTEX_A53 := true
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5003804672
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24892644352
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
TARGET_USES_MKE2FS := true

# Encryption
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# TWRP Flags
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXCLUDE_SUPERSU := true
TW_NEW_ION_HEAP := true
TW_USE_TOOLBOX := true
TW_IGNORE_MISC_WIPE_DATA := true

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

SHRP_PATH := device/yu/garlic
# Maintainer name
SHRP_MAINTAINER := Pritish Joshi
# Device codename
SHRP_DEVICE_CODE := Garlic
# put this 0 if device has no EDL mode
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
# Put 0 to disable flashlight
SHRP_FLASH := 1
# These are led paths, find yours then put here
SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
SHRP_FONP_3 := /sys/class/leds/led:switch/brightness
# Max Brightness of LED
SHRP_FLASH_MAX_BRIGHTNESS := 200
# Check your device's recovery path, dont use blindly
SHRP_REC := /dev/block/bootdevice/by-name/recovery
# Use this flag only if your device is A/B
#SHRP_AB := true

