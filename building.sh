#!/usr/bin/env bash

# Define Variables
DEVICE="p3s"
DT="https://github.com/The-Unbeyond-Team/android_device_samsung_p3s.git"
OEM="samsung"
TW_BRANCH="12.1"
TARGET=(
	recoveryimage
)

. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_${DEVICE}-eng
mka -j$(nproc) ${TARGET}

cd ${OUT}
