# Copyright (C) 2013 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product

ifeq (pa_i9103,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Inherit device configuration
$(call inherit-product, device/samsung/i9103/full_i9103.mk)

# Release name
PRODUCT_RELEASE_NAME := i9103

# Discard inherited values and use our own instead.
PRODUCT_MODEL := GT-I9103
PRODUCT_BRAND := samsung
PRODUCT_NAME := pa_i9103
PRODUCT_DEVICE := i9103
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=GT-I9103 \
    PRODUCT_DEVICE=GT-I9103 \
    TARGET_DEVICE=GT-I9103 \
    PRIVATE_BUILD_DESC="GT-I9103-user 4.0.4 IMM76D XWLP8 release-keys" \
    BUILD_FINGERPRINT="samsung/GT-I9103/GT-I9103:4.0.4/IMM76D/XWLP8:user/release-keys"

endif
