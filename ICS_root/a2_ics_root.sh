#!/bin/sh

adb shell "mv /data/local/12m/batch /data/local/12m/batch.bak"
adb shell "ln -s /data /data/local/12m/batch"
adb reboot
adb wait-for-device
adb shell "rm /data/local.prop"
adb shell "echo \"ro.kernel.qemu=1\" > /data/local.prop"
adb reboot
adb wait-for-device
adb remount
adb push su /system/bin/su
adb shell chmod 04755 /system/bin/su
adb push Superuser.apk /system/app
adb shell chmod 0666 /system/app/Superuser.apk
adb shell "echo \"ro.kernel.qemu=0\" > /data/local.prop"
adb shell rm /data/local.prop
adb shell rm /data/local/12m/batch
adb shell mv /data/local/12m/batch.bak /data/local/12m/batch
adb reboot
echo "You are rooted!"

