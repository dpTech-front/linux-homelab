#!/bin/sh
# ~/.config/bspwm/monitor_setup.sh
# Automatically detect all connected monitors and assign numeric desktops
# Dependencies: xrandr, bspwm

# Define numeric desktops
DESKTOPS_LIST=(1 2 3 4 5 6 7 8 9 10 11 12)

# Get all connected monitors
CONNECTED_MONITORS=$(xrandr --query | grep " connected" | awk '{ print $1 }')

MONITOR_INDEX=0

for MONITOR in $CONNECTED_MONITORS; do
    # Set all monitors to auto mode
    xrandr --output "$MONITOR" --auto

    # Assign desktops dynamically
    if [ $MONITOR_INDEX -eq 0 ]; then
        DESKTOPS="${DESKTOPS_LIST[@]:0:5}"
    elif [ $MONITOR_INDEX -eq 1 ]; then
        DESKTOPS="${DESKTOPS_LIST[@]:5:4}"
    else
        DESKTOPS="${DESKTOPS_LIST[@]:9}"
    fi

    bspc monitor "$MONITOR" -d $DESKTOPS
    MONITOR_INDEX=$((MONITOR_INDEX + 1))
done
