#! /bin/sh

emerge_log="$(doas tail -n 4 /var/log/emerge.log)"
message="Finished sysup with doas ${emerge_log}"

doas emerge --ask -uDN --autounmask=y --autounmask-keep-masks=y @world
dunstify "$message"
