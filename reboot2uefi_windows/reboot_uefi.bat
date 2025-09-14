@echo off
:: This script reboots a modern Windows PC directly into the UEFI firmware setup.
:: It must be run as an Administrator.

echo #####################################################################
echo #                                                                   #
echo #    This script will reboot your PC into the UEFI firmware setup.  #
echo #                                                                   #
echo #####################################################################
echo.

:: Attempt to reboot to firmware with a 15-second timer.
shutdown /r /fw /t 15

echo.
echo Reboot command issued. If Windows does not reboot, please
echo right-click this file and select "Run as administrator".

:: Pause to allow the user to read the message if shutdown fails.
pause
