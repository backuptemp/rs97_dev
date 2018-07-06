#!/bin/sh
umount -f /mnt/ext_sd
echo "/dev/mmcblk1p1" > /sys/devices/platform/musb_hdrc.0/gadget/gadget-lun1/file
