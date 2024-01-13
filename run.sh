#!/bin/bash

echo "Please select an option:"
echo "1) Run installer script for a single device"
echo "2) Run installer script for all devices"
echo "3) Run installer script with auto device detection"

read_script_path() {
    read -p "Enter script path or press enter to use default: " script_path
    if [[ -z "$script_path" ]]; then
        script_path="install/install.sh"
    fi
    if [[ ! -f "$script_path" ]]; then
        echo "Script not found at $script_path. Using default 'install.sh'."
        script_path="install/install.sh"
    fi
    echo "Using script: $script_path"
}

read_input() {
    read -p "Enter your choice (1, 2 or 3): " choice
    case $choice in
        1)
            echo "Running installer script..."
            read_script_path
            bash "scripts/singleInstall.sh" "$script_path"
            ;;
        2)
            echo "Running auto installer with script..."
            read_script_path
            bash "scripts/allInstall.sh" "$script_path"
            ;;
        3)
            echo "Running auto installer with script..."
            read_script_path
            bash "scripts/autoInstall.sh" "$script_path"
            ;;    
        *)
            echo "Invalid selection. Please try again."
            read_input
            ;;
    esac
}

read_input
