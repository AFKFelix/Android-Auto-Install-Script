# Android App Installation Script

This script allows the deployment of an app on multiple Android devices using adb, offering a more efficient method than manual installation.

## Features

- **Single Device Installation:** Executes an installation script on a single connected Android device.
- **Batch Installation:** Runs the installation script on all connected Android devices.
- **Auto-Detect and Install:** Automatically detects new device connections and performs installation.

By default, the script executes `install/install.sh`, which installs the APK located at `install/app.apk`.

## System Requirements

- adb (Android Debug Bridge) must be installed with its path set in your system's environment variables
- Windows users require Git Bash or Windows Subsystem for Linux (WSL) to execute the script

## Usage Instructions

1. Clone or download the repository.
2. Place your APK in the `install` directory, renaming it to `app.apk`.
3. Open a terminal and navigate to the repository's directory.
4. Execute the `run.sh` script.
5. Follow the instructions of the script.

## Customization

The script prompts you for a path to a custom installation script. Regardless of the chosen mode, the device identifier will always be passed as the first argument.
