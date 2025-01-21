#! /bin/sh

lockscreen=/tmp/lockscreen
mkdir $lockscreen

create_lockscreen_image() {
	grim -o "$1" "$lockscreen/$1"
	magick "$lockscreen/$1" -blur 0x20 "$lockscreen/$1"
}
create_lockscreen_image "DP-2" &
create_lockscreen_image "DP-3" &
create_lockscreen_image "HDMI-A-1" &
wait
hypridle &
swaylock --image DP-2:"$lockscreen/DP-2" --image DP-3:"$lockscreen/DP-3" --image HDMI-A-1:"$lockscreen/HDMI-A-1"
rm -rf $lockscreen
pkill hypridle

# Triple-check our devices are turned on
$HOME/.scripts/unsleep.sh
