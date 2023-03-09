#!/bin/bash
# Purpose: Install the Ricoh MP C6004ex printer driver (dmg file) on a MacOS computer, run it with an account with root permissions.
# Author: Daniel Arauz - Twitter: @danarauz
# 
echo " "
echo "----------------------------------------------------"
echo "DOWNLOAD AND INSTALL RICOH MP C6004ex PRINTER DRIVER"
echo "----------------------------------------------------"
echo " "
echo " "
echo "Driver Source: "
echo "https://support.ricoh.com/bb/pub_e/dr_ut_e/0001316/0001316696/V4000/Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0.dmg"
echo " "
echo " "
read -p "Press Enter to download the driver. CTRL+C to exit." blah
echo " "
echo "Attempting to download:"
curl -O --progress-bar https://support.ricoh.com/bb/pub_e/dr_ut_e/0001316/0001316696/V4000/Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0.dmg
sleep 5
ls -lsa "$(pwd)/Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0.dmg"
echo " "
echo "Attempting to mount: Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0.dmg"
sudo hdiutil attach "$(pwd)/Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0.dmg"
echo " "
echo "Attemping to install Ricoh_PS_Printers_Vol4_EXP_LIO_Driver.pkg:"
sudo installer -package "/Volumes/Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0/Ricoh_PS_Printers_Vol4_EXP_LIO_Driver.pkg" -target /
echo " "
echo "----------------------------------------"
echo " "
echo "Command executed. $(date)"
read -p "Press Enter to continue." blah
sudo hdiutil eject "/Volumes/Ricoh_PS_Printers_Vol4_EXP_LIO_4.0.0.0"
exit 0
