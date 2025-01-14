#! /bin/dash

#sleep 10
#eww open-many topbar0 topbar1 topbar2
/usr/bin/eww open topbar0
/usr/bin/eww open topbar1
/usr/bin/eww open topbar2

mkdir /tmp/eww
touch /tmp/eww/isperformancepanelopen
echo "0" > /tmp/eww/isperformancepanelopen
