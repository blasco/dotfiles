#!/bin/bash
BATTINFO=`acpi -b`
#echo ${BATTINFO} >> /home/woowapdabug/script_working.txt
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 01:15:00 ]] ; then
    # https://wiki.archlinux.org/index.php/Desktop_notifications#Usage_in_programming
    USER_ID=`id -u woowapdabug`
    DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/${USER_ID}/bus notify-send -i notification-battery-low "Low battery" "$BATTINFO"
fi
