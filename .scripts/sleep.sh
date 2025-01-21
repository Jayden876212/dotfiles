#! /bin/sh

# Turn off RGB devices
/usr/bin/openrgb --profile "Off"

# Turn off monitors
ddcutil setvcp D6 04 -d 1 &
ddcutil setvcp D6 04 -d 2 &
#ddcutil setvcp D6 04 -d 3 &
#ddcutil setvcp D6 0x04 -b 4 &
#ddcutil setvcp D6 0x04 -b 5 &
#ddcutil setvcp D6 0x04 -b 7 &
#hyprctl dispatch dpms off DP-3
#hyprctl dispatch dpms off HDMI-A-1
hyprctl dispatch dpms off DP-2
