USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/asus/p023/BoardConfigVendor.mk

# Platform
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := p023
#
# Architecture
TARGET_ARCH := x86
TARGET_CPU_ABI := x86
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := silvermont
TARGET_ARCH_VARIANT_FPU := sse
TARGET_CPU_VARIANT := x86
TARGET_BOOTLOADER_BOARD_NAME := sofia3g
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_KERNEL_CMDLINE := idle=halt androidboot.hardware=sofia3g nolapic_pm firmware_class.path=/system/vendor/firmware nolapic_timer x86_intel_xgold_timer=soctimer_only vmalloc=256M slub_max_order=0 build_version=3 debug notsc
BOARD_KERNEL_BASE := 0x007f8000
BOARD_KERNEL_PAGESIZE := 4096

BUILD_ARM_FOR_X86 := true
# IMG graphics
#BOARD_GFX_REV := RGX6400
#ENABLE_IMG_GRAPHICS := true
#ENABLE_MRFL_GRAPHICS := true
#INTEL_HWC_MOOREFIELD := true
#HWUI_IMG_FBO_CACHE_OPTIM := true
#TARGET_INTEL_HWCOMPOSER_FORCE_ONLY_ONE_RGB_LAYER := true

# IMG Graphics: System's VSYNC phase offsets in nanoseconds
#VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
#SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

ADDITIONAL_DEFAULT_PROPERTIES += \
#    ro.opengles.version = 196608 \
#    ro.hwui.drop_shadow_cache_size = 6 \
#   ro.hwui.gradient_cache_size = 1 \
#   ro.hwui.layer_cache_size = 48 \
#   ro.hwui.path_cache_size = 32 \
#   ro.hwui.text_large_cache_width = 2048 \
#   ro.hwui.text_large_cache_height = 1024 \
#   ro.hwui.text_small_cache_width = 1024 \
#   ro.hwui.text_small_cache_height = 1024 \
#   ro.hwui.texture_cache_flushrate = 0.4 \
#   ro.hwui.texture_cache_size = 72 \

MAX_EGL_CACHE_ENTRY_SIZE := 65536
MAX_EGL_CACHE_SIZE := 1048576

INTEL_VA := true
BUILD_WITH_FULL_STAGEFRIGHT := true
BOARD_USES_VIDEO := true

# Disable IMG RS GPU driver
# OVERRIDE_RS_DRIVER := libPVRRS.so

# enabled to carry out all drawing operations performed on a View's canvas with GPU for 2D rendering pipeline.
#USE_OPENGL_RENDERER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
BOARD_USES_WRS_OMXIL_CORE := true
BOARD_USES_MRST_OMX := true
USE_HW_VP8 := true

# Media: DRM Protected Video
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 1
USE_INTEL_SECURE_AVC := true

# Settings for the Media SDK library and plug-ins:
# - USE_MEDIASDK: use Media SDK support or not
# - MFX_IPP: sets IPP library optimization to use
#USE_MEDIASDK := true
#MFX_IPP := p8

# Video Post Processing
#TARGET_HAS_ISV := true
#ADDITIONAL_DEFAULT_PROPERTIES += \
#   persist.intel.isv.vpp = 1 \
#   persist.intel.isv.frc = 1

#COMMON_GLOBAL_CFLAGS += -DGFX_BUF_EXT

# PowerHAL
TARGET_POWERHAL_VARIANT := mofd_v1

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 42024960
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/asus/p023/kernel

#USE_CWM_GRAPHICS := true
#RECOVERY_VARIANT := carliv
#USE_OPENGL_RENDERER := true
#BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
#TARGET_DISABLE_TRIPLE_BUFFERING := false
#VIBRATOR_TIMEOUT_FILE := /sys/devices/virtual/timed_output/vibrator/disable
DEVICE_RESOLUTION := 720x1280
#BOARD_INCLUDE_CRYPTO := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_SUPERSU := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_MTP := true
#TW_NO_SCREEN_TIMEOUT := true
TW_NO_USB_STORAGE := true
#TW_INCLUDE_NTFS_3G := true
BOARD_SUPPRESS_EMMC_WIPE := true
# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
#TW_SCREEN_BLANK_ON_BOOT=true