#!/bin/bash

# Check if the script is being run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This file needs to be run with sudo. Please enter your password."
   # Re-run the script with sudo, which will prompt for a password
   exec sudo "$0" "$@"
fi

# Check if efibootmgr is installed
if ! command -v efibootmgr &> /dev/null; then
    echo "Error: efibootmgr command not found."
    echo "Please install efibootmgr to use this script (e.g., sudo apt install efibootmgr)."
    exit 1
fi

# Countdown from 10 seconds
echo "Rebooting to firmware setup in 10 seconds. Press Ctrl+C to cancel."
for i in {10..1}
do
   echo -ne "Rebooting in $i... \r"
   sleep 1
done

echo -e "\nRebooting now..."
# Execute the reboot command using efibootmgr
efibootmgr --reboot-to-firmware-setup
