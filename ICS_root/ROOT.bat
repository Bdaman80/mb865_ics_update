@echo off
cls
adb kill-server
adb wait-for-device
adb shell mv /data/local/12m/batch /data/local/12m/batch.bak
adb shell ln -s /data /data/local/12m/batch
adb reboot
adb wait-for-device
adb.exe shell rm /data/local.prop
adb.exe shell "echo \"ro.kernel.qemu=1\" > /data/local.prop"
adb.exe reboot
adb.exe wait-for-device
adb.exe remount
adb.exe push su /system/bin/su
adb.exe shell chmod 04755 /system/bin/su
adb.exe push Superuser.apk /system/app
adb.exe shell chmod 0666 /system/app/Superuser.apk
adb.exe shell "echo \"ro.kernel.qemu=0\" > /data/local.prop"
adb.exe shell rm /data/local.prop
adb.exe shell rm /data/local/12m/batch
adb.exe shell mv /data/local/12m/batch.bak /data/local/12m/batch
adb reboot
echo You are rooted!
PAUSE
echo on
