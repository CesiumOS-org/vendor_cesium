# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 The PixelExperience Project
# Copyright (C) 2020 The CesiumOS Project
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

# Build system colors

ifneq ($(BUILD_WITH_COLORS),0)
  CL_RED="\033[31m"
  CL_GRN="\033[32m"
  CL_YLW="\033[33m"
  CL_BLU="\033[34m"
  CL_MAG="\033[35m"
  CL_CYN="\033[36m"
  CL_RST="\033[0m"
endif

CUSTOM_TARGET_PACKAGE := $(PRODUCT_OUT)/$(CESIUM_MOD_VERSION).zip

.PHONY: otapackage bacon
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
bacon: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(CUSTOM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CUSTOM_TARGET_PACKAGE).md5sum
	$(hide) ./vendor/cesium/tools/generate_json_build_info.sh $(CUSTOM_TARGET_PACKAGE)
	@echo -e ${CL_RST} ""
	echo -e ${CL_RED}" ▄████▄  ▓█████   ██████  ██▓ █    ██  ███▄ ▄███▓ ▒█████    ██████  "${CL_RED}
	echo -e ${CL_CYN}"▒██▀ ▀█  ▓█   ▀ ▒██    ▒ ▓██▒ ██  ▓██▒▓██▒▀█▀ ██▒▒██▒  ██▒▒██    ▒  "${CL_RST}
	echo -e ${CL_RED}"▒▓█    ▄ ▒███   ░ ▓██▄   ▒██▒▓██  ▒██░▓██    ▓██░▒██░  ██▒░ ▓██▄    "${CL_RED}
	echo -e ${CL_CYN}"▒▓▓▄ ▄██▒▒▓█  ▄   ▒   ██▒░██░▓▓█  ░██░▒██    ▒██ ▒██   ██░  ▒   ██▒ "${CL_RST}
	echo -e ${CL_RED}"▒ ▓███▀ ░░▒████▒▒██████▒▒░██░▒▒█████▓ ▒██▒   ░██▒░ ████▓▒░▒██████▒▒ "${CL_RED}
	echo -e ${CL_CYN}"░ ░▒ ▒  ░░░ ▒░ ░▒ ▒▓▒ ▒ ░░▓  ░▒▓▒ ▒ ▒ ░ ▒░   ░  ░░ ▒░▒░▒░ ▒ ▒▓▒ ▒ ░ "${CL_RST}
	echo -e ${CL_RED}"  ░  ▒    ░ ░  ░░ ░▒  ░ ░ ▒ ░░░▒░ ░ ░ ░  ░      ░  ░ ▒ ▒░ ░ ░▒  ░ ░ "${CL_RED}
	echo -e ${CL_CYN}"░           ░   ░  ░  ░   ▒ ░ ░░░ ░ ░ ░      ░   ░ ░ ░ ▒  ░  ░  ░   "${CL_RST}
	echo -e ${CL_RED}"░ ░         ░  ░      ░   ░     ░            ░       ░ ░        ░   "${CL_RED}
	echo -e ${CL_CYN}"░                                                                   "${CL_RST}
	@echo -e ${CL_RST} "" ${CL_RST}
	@echo -e ${CL_BLD}${CL_RED}"=================================-Package complete-===================================================="${CL_RED}
	@echo -e ${CL_BLD}${CL_YLW}"Zip: "${CL_YLW} $(CUSTOM_TARGET_PACKAGE)${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"MD5: "${CL_YLW}"`cat $(CUSTOM_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"Size: "${CL_YLW}"`ls -lah $(CUSTOM_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"Integer Value:"${CL_YLW}" `wc -c $(CUSTOM_TARGET_PACKAGE) | awk '{print $$1}' `"${CL_RST}
	@echo -e ${CL_BLD}${CL_YLW}"TimeStamp:"${CL_YLW}" `cat $(PRODUCT_OUT)/system/build.prop | grep ro.build.date.utc | cut -d'=' -f2 | awk '{print $$1}' `"${CL_RST}
	@echo -e ${CL_BLD}${CL_RED}"======================================================================================================="${CL_RST}

