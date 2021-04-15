#
# Copyright (C) 2021 The LineageOS Project
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

# Common tegra policy
BOARD_SEPOLICY_DIRS   += device/nvidia/sepolicy/tegra/common
LINEAGE_SEPOLICY_DIRS += device/nvidia/sepolicy/tegra/lineage

ifeq ($(TARGET_TEGRA_VERSION), t210)
BOARD_SEPOLICY_DIRS += device/nvidia/sepolicy/t210/common
else ifeq ($(TARGET_TEGRA_VERSION), t186)
BOARD_SEPOLICY_DIRS += device/nvidia/sepolicy/t186/common
else ifeq ($(TARGET_TEGRA_VERSION), t194)
BOARD_SEPOLICY_DIRS += device/nvidia/sepolicy/t194/common
endif

ifneq ($(LINEAGE_BUILD),)
BOARD_SEPOLICY_DIRS += $(LINEAGE_SEPOLICY_DIRS)
endif
