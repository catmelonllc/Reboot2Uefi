# Linux Reboot to UEFI Scripts

These scripts reboot a Linux system directly into its UEFI firmware setup screen. The scripts are identical; they are named for different init systems for organizational convenience only.

## Requirements
1.  **UEFI System**: Your computer must use UEFI firmware, not a legacy BIOS.
2.  **`efibootmgr`**: The `efibootmgr` utility must be installed. If it's not, the script will tell you. You can install it via your package manager (e.g., `sudo apt install efibootmgr` or `sudo pacman -S efibootmgr`).

## How to Use
1.  Open a terminal and navigate to this directory.
2.  Make the script you want to use executable:
    ```bash
    chmod +x reboot_firmware_openrc.sh
    ```
3.  Run the script:
    ```bash
    ./reboot_firmware_openrc.sh
    ```
The script will ask for your `sudo` password if needed, then begin a 10-second countdown before rebooting.
