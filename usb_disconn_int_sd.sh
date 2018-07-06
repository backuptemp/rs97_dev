#!/bin/sh
echo "" > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun0/file
mount /dev/mmcblk0p4 /mnt/int_sd -t vfat -o rw,utf8
