umount /mnt/keydrive

modprobe -r uas
modprobe -r usb_storage

modprobe -r sd_mod
modprobe -r scsi_mod
modprobe -r scsi_common
