# Linux Reboot to UEFI Scripts

This directory contains a collection of scripts designed to reboot a Linux system directly into its UEFI firmware setup screen.

## How It Works: Two Methods

There are two primary ways to reboot to UEFI from within Linux, and these scripts cover both:

1.  **`systemctl` (for systemd users):** Modern Linux distributions using the `systemd` init system have a built-in command for this. The `reboot_firmware_systemd.sh` script uses this native method.
2.  **`efibootmgr` (for everyone else):** For systems that do not use `systemd` (like those running OpenRC, Runit, etc.), the `efibootmgr` utility can be used. This tool directly tells the UEFI firmware to boot into the setup menu on the next restart. All other scripts in this directory use this method.

## Universal Requirements

Before you begin, ensure your system meets these two conditions:

1.  **UEFI Firmware:** Your computer must be using a modern UEFI firmware, not a legacy BIOS. If your computer reboots normally instead of entering setup, you likely have a BIOS system.
2.  **Root/Sudo Privileges:** These commands require administrator access to work. The scripts will automatically ask for your `sudo` password if they are not run as root.

---

## Instructions by Distribution

Find your distribution below to see which script is recommended for you.

| Distribution | Default Init System | Recommended Script | Notes |
| :--- | :--- | :--- | :--- |
| **Debian** (10+) | `systemd` | `reboot_firmware_systemd.sh` | |
| **Ubuntu** (all modern) | `systemd` | `reboot_firmware_systemd.sh` | |
| **Fedora** | `systemd` | `reboot_firmware_systemd.sh` | |
| **Arch Linux** | `systemd` | `reboot_firmware_systemd.sh` | |
| **Artix Linux** | `OpenRC`, `Runit`, `s6` | `reboot_firmware_openrc.sh` (or Runit, etc.) | Uses `efibootmgr`. |
| **Void Linux** | `Runit` | `reboot_firmware_runit.sh` | Uses `efibootmgr`. |
| **Devuan** | `SysVinit`, `OpenRC` | `reboot_firmware_sysvinit.sh` | Uses `efibootmgr`. |
| **Gentoo** | `OpenRC` (default) | `reboot_firmware_openrc.sh` | Uses `efibootmgr`. |

**Don't see your distro?** You can check your init system by running `ps -p 1 -o comm=`. If the output is `systemd`, use the `systemd` script. If it's anything else (like `init`, `runit`, `openrc`), use one of the other scripts.

---

## Step-by-Step Usage

1.  **Open your terminal.**

2.  **Navigate** to this `reboot2uefi_linux` directory.

3.  **Make the script executable.** You only need to do this once. Replace the filename with the one you chose from the table above.
    ```bash
    chmod +x reboot_firmware_systemd.sh
    ```

4.  **Run the script.**
    ```bash
    ./reboot_firmware_systemd.sh
    ```

The script will prompt for your password, begin a 10-second countdown, and then reboot your machine into the UEFI firmware settings.

## Troubleshooting

*   **`Error: efibootmgr command not found`**: This means you are using a non-systemd script but don't have the required tool. You must install it using your distribution's package manager.
    *   On Debian/Ubuntu/Devuan: `sudo apt install efibootmgr`
    *   On Arch/Artix: `sudo pacman -S efibootmgr`
    *   On Fedora: `sudo dnf install efibootmgr`
    *   On Gentoo: `sudo emerge --ask sys-boot/efibootmgr`

*   **`Permission denied`**: You forgot to make the script executable with the `chmod +x` command.
