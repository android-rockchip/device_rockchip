#
# Copyright 2014 The Android Open-Source Project
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
include device/rockchip/rk3588/BoardConfig.mk
BUILD_WITH_GO_OPT := false

# AB image definition
BOARD_USES_AB_IMAGE := false
BOARD_ROCKCHIP_VIRTUAL_AB_ENABLE := false

ifeq ($(strip $(BOARD_USES_AB_IMAGE)), true)
    include device/rockchip/common/BoardConfig_AB.mk
    TARGET_RECOVERY_FSTAB := device/rockchip/rk3588/rk3588_box/recovery.fstab_AB
endif

PRODUCT_UBOOT_CONFIG := rk3588
PRODUCT_KERNEL_DTS := rk3588-nvr-demo-v10-android
BOARD_HS_ETHERNET := true

CURRENT_SDK_VERSION := rk3588_ANDROID12.0_BOX_V1.0
BOARD_GSENSOR_MXC6655XA_SUPPORT := true
BOARD_CAMERA_SUPPORT := true
BOARD_CAMERA_SUPPORT_EXT := true
#camera auto frame feature
PRODUCT_HAVE_EPTZ := false

# Config GO Optimization
BUILD_WITH_GO_OPT := false

TARGET_ROCKCHIP_PCBATEST := false

