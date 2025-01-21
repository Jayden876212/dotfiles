#! /bin/sh

# Turn off RGB devices
/usr/bin/openrgb --profile "Off"

# Turn off monitors
#ddcutil setvcp D6 03 -d 1 &
#ddcutil setvcp D6 03 -d 2 &
#ddcutil setvcp D6 04 -d 3 &
#ddcutil setvcp D6 0x04 -b 7 &
#hyprctl dispatch dpms off DP-3
#hyprctl dispatch dpms off HDMI-A-1
ddcutil setvcp D6 0x04 -b 4 --maxtries 15,15,15
ddcutil setvcp D6 0x04 -b 5 --maxtries 15,15,15
hyprctl dispatch dpms off DP-2

#hyprctl dispatch dpms off
