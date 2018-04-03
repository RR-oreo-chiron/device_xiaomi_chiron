# Copyright (C) 2010 The Android Open Source Project
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

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/chiron

# Kernel
TARGET_KERNEL_CONFIG := chiron_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := chiron

# Audio
AUDIO_FEATURE_ELLIPTIC_ULTRASOUND_SUPPORT := true

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux
# BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# SHIMS
TARGET_LD_SHIM_LIBS := /system/lib/libMiCameraHal.so|libshim_MiCamera.so

# Inherit from proprietary files
include vendor/xiaomi/chiron/BoardConfigVendor.mk
