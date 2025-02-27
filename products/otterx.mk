# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit device configuration for Kindle Fire
$(call inherit-product, device/amazon/otter-common/aicp.mk)
$(call inherit-product, device/amazon/otterx/full_otterx.mk)

PRODUCT_NAME := aicp_otterx
PRODUCT_RELEASE_NAME := KFire

# Boot animation
TARGET_SCREEN_HEIGHT := 1024_otterx
TARGET_SCREEN_WIDTH := 600
-include vendor/aicp/configs/bootanimation.mk
