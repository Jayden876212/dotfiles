#! /bin/sh

virsh --connect=qemu:///system start win11-tdljayden
virt-viewer --connect=qemu:///system --attach --full-screen win11-tdljayden &
