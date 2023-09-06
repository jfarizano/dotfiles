#!/bin/sh
xrandr --output DVI-D-0 --off --output HDMI-0 --off --output HDMI-1 --mode 1920x1080 --pos 0x130 --rotate normal --output DP-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off
nitrogen --head=0 --set-scaled .config/nitrogen/jv408avutto91.jp
