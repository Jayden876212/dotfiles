#! /bin/sh

doas usermod -a -G render,video $LOGNAME
echo "ADD_EXTRA_GROUPS=1" | doas tee -a /etc/adduser.conf
echo "EXTRA_GROUPS=video" | doas tee -a /etc/adduser.conf
echo "EXTRA_GROUPS=render" | doas tee -a /etc/adduser.conf
