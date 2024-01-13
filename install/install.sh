#!/bin/bash

device="$1"
apk_path="install/app.apk"

echo "Running installer on device $device"

if [[ ! -f "$apk_path" ]]; then
    echo "APK file not found at $apk_path. Please check the path and try again."
    exit 1
fi

echo "Installing APK"
adb -s "$device" install "$apk_path"