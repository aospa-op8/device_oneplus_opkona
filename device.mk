#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=erofs \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# ANT+
PRODUCT_PACKAGES += \
    AntHalService-Soong \
    com.dsi.ant@1.0.vendor

# Alert slider
PRODUCT_PACKAGES += \
    KeyHandler \
    tri-state-key-calibrate

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Audio
PRODUCT_PACKAGES += \
    audio_amplifier.kona

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_io_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_io_policy.conf \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio_instantnoodle/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/19821/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio_instantnoodlep/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/19811/etc/mixer_paths.xml

# Authsecret
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0.vendor

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Boot control
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service_64 \
    libcamera_metadata_shim \
    vendor.qti.hardware.camera.postproc@1.0.vendor

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

# Device ID attestation
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.3.vendor \
    android.hardware.drm@1.4-service.clearkey

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.oplus \
    libshims_fingerprint.oplus

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0.vendor

# GPS
LOC_HIDL_VERSION = 4.0

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Hotword enrollment
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom.ramdisk \
    init.oplus.hw.rc \
    init.oplus.hw.rc.recovery \
    init.oplus.rc \
    init.oplus.sh \
    init.target.rc \
    ueventd.oplus.rc \
    init_overlayfs.rc

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1.vendor

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona_vendor.xml \
    $(LOCAL_PATH)/configs/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_kona.xml

# Net
PRODUCT_PACKAGES += \
    android.system.net.netd@1.1.vendor

# Neural networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResTarget \
    OPlusFrameworksResCommon \
    OPlusFrameworksResTarget \
    OPlusSettingsResCommon \
    OPlusSettingsProviderResTarget \
    OPlusSystemUIResCommon \
    OPlusSystemUIResTarget \
    OPlusFrameworksResKebab\
    OPlusSettingsProviderResKebab \
    OPlusSystemUIResKebab \
    OPlusFrameworksResInstantnoodle \
    OPlusSettingsProviderResInstantnoodle \
    OPlusSystemUIResInstantnoodle \
    OPlusFrameworksResInstantnoodlep \
    OPlusSettingsProviderResInstantnoodlep \
    OPlusSystemUIResInstantnoodlep \
    OPlusColorModesSettings \
    OPlusColorModesCommon

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Perf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service \
    android.hardware.power@1.2.vendor \
    vendor.qti.hardware.perf@2.2.vendor

# QTI
TARGET_BOARD_PLATFORM := kona

TARGET_COMMON_QTI_COMPONENTS := all

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.0-service.multihal \
    libsensorndkbridge \
    sensors.oplus

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_11/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_ODM)/etc/permissions/sku_9/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml

# Shipping API
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/oplus

# Storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Vendor service manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Verified Boot
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service.oplus

# VNDK
PRODUCT_USE_PRODUCT_VNDK_OVERRIDE := true

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/opkona/opkona-vendor.mk)
