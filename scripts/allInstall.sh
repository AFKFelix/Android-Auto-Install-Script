#!/bin/bash

script="$1"

echo "Searching all connected Android devices..."

device_list=$(adb devices | grep 'device$' | cut -f1)

if [[ -z "$device_list" ]]; then
    echo "No Android devices found. Please connect a device and try again."
    exit 1
fi

echo "Start install on all connected Android devices..."

for device in $device_list; do
    if [ -n "$device" ]; then
        bash "$script" "$device"
    fi
done        