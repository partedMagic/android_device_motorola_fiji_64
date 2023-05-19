#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.enableswap \
    factory_init.rc \
    init.connectivity.rc \
    meta_init.project.rc \
    factory_init.connectivity.rc \
    meta_init.connectivity.rc \
    init.aee.rc \
    init.project.rc \
    init.mt6765.usb.rc \
    factory_init.project.rc \
    init.ago.rc \
    init.mt6765.rc \
    init.sensor_1_0.rc \
    meta_init.modem.rc \
    multi_init.rc \
    init.modem.rc \
    meta_init.rc \
    init.recovery.mt6765.rc \
    init.rc \
    ueventd.rc \

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product-if-exists, vendor/motorola/fiji_64/fiji_64-vendor.mk)

# For some stuff
USE_XML_AUDIO_POLICY_CONF := 1
