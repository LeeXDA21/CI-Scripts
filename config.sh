#!/bin/bash

# Device
export SHRP_BRANCH="shrp_12.1"
export DT_LINK="https://github.com/Nico170420/android_device_samsung_z3s.git -b shrp"

export DEVICE="z3s"
export OEM="samsung"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="recoveryimage"

export OUTPUT="SHRP*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
#DEPS=(
#    "https://github.com/OrangeFoxRecovery/Avatar.git misc"
#)

# Extra Command
export EXTRA_CMD="export OF_MAINTAINER=Nico170420"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=false

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16