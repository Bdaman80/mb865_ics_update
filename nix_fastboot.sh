#!/bin/bash
#
#Bdaman80 Fastboot Command For atrix2
#software_version version="edison-user 4.0.4 6.7.2-226-EDICS-10 67.21.125 release-keys2012-07-26 12:10 Off.Bld LUD_EDISON_R1D7_PATCH_49_120726_1154 crh1090280_M570_PC_CARD_RAIN
#model="Edison_ICS_CFC
fastboot -w
fastboot flash mbm edison_ics/allow-mbmloader-flashing-mbm.bin
fastboot reboot-bootloader
fastboot flash mbm edison_ics/mbm.bin
fastboot flash mbmloader edison_ics/mbmloader.bin
fastboot reboot-bootloader
fastboot flash cdt.bin edison_ics/cdt.bin
fastboot -w
fastboot flash lbl edison_ics/lbl
fastboot flash logo.bin edison_ics/logo.bin
fastboot flash ebr edison_ics/ebr
fastboot flash mbr edison_ics/mbr
fastboot flash devtree edison_ics/device_tree.bin
fastboot flash system edison_ics/system.img
fastboot flash boot edison_ics/boot.img
fastboot flash recovery edison_ics/recovery.img
fastboot flash radio edison_ics/radio.img
fastboot flash cdrom edison_ics/cdrom
fastboot flash preinstall edison_ics/preinstall.img
fastboot -w

