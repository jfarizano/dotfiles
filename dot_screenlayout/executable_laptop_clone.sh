#!/bin/sh
xrandr --output eDP --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-0 --off --output DisplayPort-1 --off
sleep 1
nitrogen --head=0 --set-scaled .config/nitrogen/jv408avutto91.jpg
