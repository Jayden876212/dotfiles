#$KEYDRIVE="/mnt/keydrive"

modprobe scsi_common
modprobe scsi_mod
modprobe sd_mod

modprobe usb_storage
modprobe uas

mount -U "B8BB-2F63" /mnt/keydrive
