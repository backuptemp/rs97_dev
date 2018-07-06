#!/bin/sh
umount -f /mnt/int_sd
echo "/dev/mmcblk0p4" > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun0/file
