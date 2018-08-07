#!/bin/bash

BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 01:15:00 ]] ; then
    notify-send 'hi'
    DISPLAY=:0.0 notify-send -i notification-battery-low "Low battery" "$BATTINFO"
fi
