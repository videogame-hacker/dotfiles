#!/usr/bin/sh

# DP-0 - ASUS VG248QE
# HDMI-0 - Ilyama ProLite

xrandr --output DP-0 --primary --mode 1920x1080 --rate 144 --pos 1920x0 \
    --output HDMI-0 --mode 1920x1080 --rate 75 --pos 0x0

bspc monitor DP-0 -d 1 2 3 4 5 6 7
bspc monitor HDMI-0 -d 8 9 10
