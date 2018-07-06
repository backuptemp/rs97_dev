#!/bin/sh
echo "" > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun1/file
mount /dev/mmcblk1p1 /mnt/ext_sd -t vfat -o rw,utf8
