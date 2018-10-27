#!/usr/bin/sh

# DVI-I-1 - ASUS VG248QE
# HDMI-1 - Ilyama ProLite

xrandr --output DVI-I-1 --primary --mode 1920x1080 --rate 144 --pos 1920x0 \
    --output HDMI-1 --mode 1920x1080 --rate 75 --pos 0x0

bspc monitor DVI-I-1 -d 1 2 3 4 5 6 7
bspc monitor HDMI-1 -d 8 9 10
