PLATFORM_PATH := device/xiaomi/olivelite

LC_ALL=C
ALLOW_MISSING_DEPENDENCIES=true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sdm439
TARGET_BOARD_PLATFORM := sdm439

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi
TARGET_CPU_VARIANT := cortex-a15

TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x4000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x100000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x550647000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x18000000
BOARD_PERSISTIMAGE_PARTITION_SIZE := 0x2000000
BOARD_FLASH_BLOCK_SIZE := 131072

# Cmdline
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci androidboot.usbconfigfs=true androidboot.selinux=permissive androidboot.configfs=true
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=300M firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7
BOARD_KERNEL_CMDLINE += android.boot.selinux=permissive

# Kernel
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_BASE := 0x80000000
TARGET_PREBUILT_KERNEL := $(PLATFORM_PATH)/prebuilt/kernel

# Fstab
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/recovery.fstab

# Init
TARGET_INIT_VENDOR_LIB := libinit_olivelite
TARGET_RECOVERY_DEVICE_MODULES := libinit_olivelite
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# QCOM Stuff
BOARD_USES_QCOM_HARDWARE := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Filesystem
#TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true

# TWRP Stuff
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
HAVE_SELINUX := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_NO_LEGACY_PROPS := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_Y_OFFSET := 57
TW_H_OFFSET := -57
TW_SCREEN_BLANK_ON_BOOT := false
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_NO_USB_STORAGE := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 489
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true


# Show build time on the splash screen
TW_DEVICE_VERSION=$(shell date '+%Y%m%d')

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2025-12-31

# Platform version
PLATFORM_VERSION := 16.1.0

# System-as-root

#BOARD_BUILD_SYSTEM_ROOT_IMAGE := true //set is system.prop
#BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist
#BOARD_SUPPRESS_SECURE_ERASE := true
# OTA

TARGET_OTA_ASSERT_DEVICE := olivelite

# Treble
#BOARD_NEEDS_VENDORIMAGE_SYMLINK := false
#BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
#TARGET_COPY_OUT_VENDOR := vendor


# NOTE - Dont use '-' or blank spaces in flag values , otherwise it will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC). 
# Path of your SHRP Tree
SHRP_PATH := device/xiaomi/olivelite
# Maintainer name *
SHRP_MAINTAINER := TechyMinati
# Device codename *
SHRP_DEVICE_CODE := olivelite
# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section] *
SHRP_DEVICE_TYPE := A/B
# Notch
SHRP_NOTCH := true
# OFFICIAL
SHRP_OFFICIAL := true
# EDL
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /storage
SHRP_INTERNAL := /sdcard1
SHRP_OTG := /usb-otg
SHRP_FLASH := 1
# Path
SHRP_REC := /dev/block/bootdevice/by-name/recovery
