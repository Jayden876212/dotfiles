#! /bin/sh

lockscreen=/tmp/lockscreen
mkdir $lockscreen

create_lockscreen_image() {
	grim -o "$1" "$lockscreen/$1"
	magick "$lockscreen/$1" -blur 0x20 "$lockscreen/$1"
}

ddcutil detect &
create_lockscreen_image "DP-2" &
create_lockscreen_image "DP-3" &
create_lockscreen_image "HDMI-A-1" &
wait
hypridle &
sleep 1
swaylock --image DP-2:"$lockscreen/DP-2" --image DP-3:"$lockscreen/DP-3" --image HDMI-A-1:"$lockscreen/HDMI-A-1"
rm -rf $lockscreen
sleep 1
pkill hypridle

# Triple-check our devices are turned on
#$HOME/.scripts/unsleep.sh
# Turn on monitors
ddcutil setvcp D6 0x01 -b 4 --maxtries 15,15,15 &
ddcutil setvcp D6 0x01 -b 5 --maxtries 15,15,15 &
hyprctl dispatch dpms on DP-2 &

sleep 3
pkill eww
hyprctl dispatch exec eww daemon
eww reload
eww open-many topbar0 topbar1 topbar2
