#! /bin/sh

# Turn on RGB devices
/usr/bin/openrgb --profile "Nord"

# Turn on monitors
ddcutil setvcp D6 01 -d 1 &
ddcutil setvcp D6 01 -d 2 &
#ddcutil setvcp D6 01 -d 3
#ddcutil setvcp D6 0x01 -b 4
#ddcutil setvcp D6 0x01 -b 5
#ddcutil setvcp D6 0x01 -b 7
#hyprctl dispatch dpms on DP-3
#hyprctl dispatch dpms on HDMI-A-1
hyprctl dispatch dpms on DP-2

# Double-check our monitors are turned on
ddcutil setvcp D6 01 -d 1 &
ddcutil setvcp D6 01 -d 2 &
hyprctl dispatch dpms on DP-2
