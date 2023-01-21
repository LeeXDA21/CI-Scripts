#!/usr/bin/env bash

# Define Variables
DEVICE="p3s"
DT="https://github.com/The-Unbeyond-Team/android_device_samsung_p3s.git"
OEM="samsung"
SHRP_BRANCH="12.1"
TARGET=(
	recoveryimage
)

cd ${OUT}

curl -sL https://git.io/file-transfer | sh
./transfer wet SHRP*.zip

