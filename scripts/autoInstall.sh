#!/bin/bash

script="$1"

known_devices=""

update_known_devices() {
    known_devices=$(adb devices | grep 'device$' | cut -f1)
}

while true; do
    echo "Searching all new connected Android devices..."
    current_devices=$(adb devices | grep 'device$' | cut -f1)

    for device in $current_devices; do
        if [[ ! $known_devices =~ $device ]]; then
            echo "New device detected: $device"
            bash "$script" "$device"
            update_known_devices
        fi
    done

    sleep 5
done  