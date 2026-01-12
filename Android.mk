LOCAL_PATH := $(call my-dir)

# MusicFX app (Android 16 version with Sony backend)
include $(CLEAR_VARS)
LOCAL_MODULE := SonyMusicFX
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_SRC_FILES := MusicFX/MusicFX.apk
LOCAL_OVERRIDES_PACKAGES := MusicFX AudioFX
LOCAL_ENFORCE_USES_LIBRARIES := false
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

# DolbySound app
include $(CLEAR_VARS)
LOCAL_MODULE := DolbySound
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_SRC_FILES := DolbySound/DolbySound.apk
include $(BUILD_PREBUILT)

# daxService app
include $(CLEAR_VARS)
LOCAL_MODULE := daxService
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_SRC_FILES := system/priv-app/daxService/daxService.apk
include $(BUILD_PREBUILT)

# Permissions
include $(CLEAR_VARS)
LOCAL_MODULE := default-com.dolby.daxservice.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/default-permissions
LOCAL_SRC_FILES := DolbySound/permissions/default-com.dolby.daxservice.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-com.dolby.daxservice.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := DolbySound/permissions/privapp-com.dolby.daxservice.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := config-com.dolby.daxservice.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig
LOCAL_SRC_FILES := DolbySound/permissions/config-com.dolby.daxservice.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := config-com.dolby.daxappui2.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/sysconfig
LOCAL_SRC_FILES := DolbySound/permissions/config-com.dolby.daxappui2.xml
include $(BUILD_PREBUILT)

# HAL Service
include $(CLEAR_VARS)
LOCAL_MODULE := vendor.dolby.hardware.dms@2.0-service
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/bin/hw
LOCAL_SRC_FILES := system/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

# HAL Init
include $(CLEAR_VARS)
LOCAL_MODULE := vendor.dolby.hardware.dms@2.0-service.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
LOCAL_SRC_FILES := vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc
include $(BUILD_PREBUILT)

# HAL VINTF Manifest
include $(CLEAR_VARS)
LOCAL_MODULE := vendor.dolby.hardware.dms@2.0-service.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/vintf/manifest
LOCAL_SRC_FILES := vendor.dolby.hardware.dms@2.0-service.xml
include $(BUILD_PREBUILT)

# Dolby Config
include $(CLEAR_VARS)
LOCAL_MODULE := dax-default.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/dolby
LOCAL_SRC_FILES := system/vendor/etc/dolby/dax-default.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := media_codecs_dolby_audio.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := system/vendor/etc/media_codecs_dolby_audio.xml
LOCAL_OVERRIDES_MODULES := media_codecs_dolby_audio
include $(BUILD_PREBUILT)

# Vendor libs
include $(CLEAR_VARS)
LOCAL_MODULE := libdapparamstorage
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libdapparamstorage.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdeccfg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libdeccfg.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdlbdsservice
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libdlbdsservice.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdlbpreg
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libdlbpreg.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsqlite_dolby
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libsqlite.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_fdtn_dolby
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libstagefright_fdtn_dolby.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_ac4dec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libstagefright_soft_ac4dec.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefright_soft_ddpdec
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libstagefright_soft_ddpdec.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefrightdolby
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/libstagefrightdolby.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.dolby.hardware.dms@2.0-impl
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := vendor.dolby.hardware.dms@2.0
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64
LOCAL_SRC_FILES := system/vendor/lib64/vendor.dolby.hardware.dms@2.0.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

# Soundfx libs (Dolby)
include $(CLEAR_VARS)
LOCAL_MODULE := libdlbvol
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64/soundfx
LOCAL_SRC_FILES := system/vendor/lib64/soundfx/libdlbvol.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libswdap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64/soundfx
LOCAL_SRC_FILES := system/vendor/lib64/soundfx/libswdap.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libswgamedap
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64/soundfx
LOCAL_SRC_FILES := system/vendor/lib64/soundfx/libswgamedap.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libswvqe
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64/soundfx
LOCAL_SRC_FILES := system/vendor/lib64/soundfx/libswvqe.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

# Dolby Init Script
include $(CLEAR_VARS)
LOCAL_MODULE := init.dolby.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := etc/init.dolby.rc
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/init
include $(BUILD_PREBUILT)

# Modern Sony Stack - Legacy framework JARs removed (not available)
# Using Modern Stack: com.sony.threesixtyra.audiofx, libavenhancements, etc.

# Media Codecs configuration required for Dolby audio support
include $(CLEAR_VARS)
LOCAL_MODULE := media_codecs_dolby
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/etc/media_codecs.xml
include $(BUILD_PREBUILT)

# Dolby App Whitelist
include $(CLEAR_VARS)
LOCAL_MODULE := dax-applist.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc/dolby
LOCAL_SRC_FILES := system/vendor/etc/dolby/dax-applist.xml
include $(BUILD_PREBUILT)

# Sony 360RA AudioFX Framework JAR (Product partition)
include $(CLEAR_VARS)
LOCAL_MODULE := com.sony.threesixtyra.audiofx
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .jar
LOCAL_PRODUCT_MODULE := true
LOCAL_SRC_FILES := vendor/dolby/framework/com.sony.threesixtyra.audiofx.jar
LOCAL_ENFORCE_USES_LIBRARIES := false
include $(BUILD_PREBUILT)

# Sony AV Enhancements native library (System_Ext)
include $(CLEAR_VARS)
LOCAL_MODULE := libavenhancements
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT)/lib64
LOCAL_SRC_FILES := vendor/dolby/lib64/libavenhancements.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

# Sony SoundFX Wrappers (Vendor)
include $(CLEAR_VARS)
LOCAL_MODULE := libznrwrapper
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib64/soundfx
LOCAL_SRC_FILES := vendor/dolby/lib64/soundfx/libznrwrapper.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

# Sony System_Ext Helper Libraries
include $(CLEAR_VARS)
LOCAL_MODULE := libmmparserextractor
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT)/lib64
LOCAL_SRC_FILES := vendor/dolby/lib64/libmmparserextractor.so
LOCAL_CHECK_ELF_FILES := false
include $(BUILD_PREBUILT)

# Sony 360RA Permissions (System_Ext)
include $(CLEAR_VARS)
LOCAL_MODULE := com.sony.360ra.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT_ETC)/permissions
LOCAL_SRC_FILES := vendor/dolby/etc/permissions/com.sony.360ra.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.sony.threesixtyra.audiofx.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT_ETC)/permissions
LOCAL_SRC_FILES := vendor/dolby/etc/permissions/com.sony.threesixtyra.audiofx.xml
include $(BUILD_PREBUILT)

# Sony SoundEnhancement permissions (System_Ext)
include $(CLEAR_VARS)
LOCAL_MODULE := com.sonyericsson.soundenhancement.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT_ETC)/permissions
LOCAL_SRC_FILES := vendor/dolby/etc/permissions/com.sonyericsson.soundenhancement.xml
include $(BUILD_PREBUILT)

# Sony ZNR (Noise Reduction) Data Files (Vendor)
include $(CLEAR_VARS)
LOCAL_MODULE := windnoise_reduction.data
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/dolby/etc/windnoise_reduction.data
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := windnoise_reduction_back.data
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/dolby/etc/windnoise_reduction_back.data
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := windnoise_reduction_stat.data
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/dolby/etc/windnoise_reduction_stat.data
include $(BUILD_PREBUILT)

# Sony Media Codec XML (Vendor)
include $(CLEAR_VARS)
LOCAL_MODULE := media_codecs_sony_c2_audio.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/dolby/etc/media_codecs_sony_c2_audio.xml
include $(BUILD_PREBUILT)

# Sony DSEE/DSX Audio Parameter Files (Vendor)
include $(CLEAR_VARS)
LOCAL_MODULE := dsx_param_file.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/dolby/etc/dsx_param_file.bin
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := alc.speaker.bin
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/etc
LOCAL_SRC_FILES := vendor/dolby/etc/alc.speaker.bin
include $(BUILD_PREBUILT)

