#!/usr/bin/sh

# DVI-I-1 - ASUS VG248QE
# DVI-D-0 - SyncMaster

xrandr --output DVI-I-1 --primary --mode 1920x1080 --rate 144 --pos 1280x0 \
    --output DVI-D-0 --mode 1680x1050 --pos 3200x0 \
    --output HDMI-0 --mode 1280x1024 --rate 75 --pos 0x0 \

bspc monitor DVI-I-1 -d 1 2 3 4 5 6 7
bspc monitor DVI-D-0 -d 8 9 10
bspc monitor HDMI-0 -d 11
