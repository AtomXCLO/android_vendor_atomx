#
# Copyright (C) 2022 The AtomX Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/atomx/bootanimation/720/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/atomx/bootanimation/1080/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/atomx/bootanimation/1440/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else
    ifeq ($(TARGET_BOOT_ANIMATION_RES),)
        $(warning "TARGET_BOOT_ANIMATION_RES is undefined, assuming 1080p")
    else
        $(warning "Current bootanimation res is not supported, forcing 1080p")
    endif
    PRODUCT_COPY_FILES += vendor/atomx/bootanimation/1080/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
