# Windows Reboot to UEFI Script

This script reboots a modern Windows PC directly into its UEFI firmware setup screen.

## Compatibility
*   Modern PCs using UEFI firmware (most computers made after 2012).
*   This will **not** work on older PCs with a legacy BIOS.

## Core Requirements

For this script to work, your system **must** meet two conditions:

1.  **UEFI Firmware:** Your computer must be using modern UEFI firmware. This script will **not** work on older computers that use a traditional legacy BIOS. Most computers manufactured after 2012 use UEFI.
2.  **Administrator Privileges:** The command used to trigger the reboot requires elevated permissions. You must run this script as an Administrator.

---

## Step-by-Step Instructions (assuming you downloaded the .bat file)

Follow these steps exactly to ensure the script runs correctly.

1.  **Locate the Script:** Find the `reboot_uefi.bat` file in this folder.

2.  **Right-Click the File:** Do not double-click it. Right-click on `reboot_uefi.bat` to open the context menu.

3.  **Run as Administrator:** From the menu, select **"Run as administrator"**.

    ![Run as Administrator](https://copyparty.blahaj.dedyn.io/images/IMG_3277.png)

4.  **Approve the UAC Prompt:** Windows will show a User Account Control (UAC) prompt asking, "Do you want to allow this app to make changes to your device?" This is completely normal. it will not change your system, only reboot it into UEFI. Click **Yes**.
![UAC](https://copyparty.blahaj.dedyn.io/images/IMG_3278.png)

6.  **Countdown and Reboot:** A black command prompt window will appear with a message. It will begin a 15-second countdown, after which your computer will automatically restart and boot directly into the UEFI firmware settings menu.

---

## Troubleshooting

*   **"The computer reboots normally (not into setup)."**
    This is the most common issue. It almost always means your computer does not have UEFI firmware and is using a legacy BIOS instead. This script cannot work on BIOS systems.

*   **"A command window flashes and disappears, but nothing happens."**
    You likely double-clicked the file instead of running it as an administrator. The script does not have the required permissions to execute the `shutdown` command. Please follow the instructions above and use the "Run as administrator" option.
