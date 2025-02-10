#!/vendor/bin/sh
# variable declaration here 
#cd /data/local/tmp
#chmod 777 MT_Test_aarch64_60001m
mt_result=0

echo "--------------------------------------"
# [MT_Test]
# -f <Config File> ex: Default.dat
# -m <MT_Number> ex: 4, or 5
# -i <Interface> ex: 1: HID, 2: HID_LINUX, 3: I2C, 4: I2C-HID, 5:I2C Chrome, 6: Elan I2C-HID
# -d <Driver Interface> ex: 0: IOCTL, 1: sysfs
# -b <I2C bus ID>
# -a <Attribute Mode> ex: 0: (Reset Read, IRQ Read), 1: (Reset Read, IRQ Write),2: (Reset Write, IRQ Read), 3: (Reset Write, IRQ Write)
# -l <Log Direcotry Path> ex: /data/local/tmp
# -r <Result Mode> ex: 0: ASCII(Default), 1: Simple String
echo "Running MT_Test..."
/vendor/bin/MT_Test_aarch64_60001m -f /vendor/etc/Default.dat -m 6 -i 6 -d 0 -r 1 -l /sdcard/

mt_result=$?

exit $mt_result 
