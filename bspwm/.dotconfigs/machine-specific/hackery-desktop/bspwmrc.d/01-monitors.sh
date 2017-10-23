#!/usr/bin/sh

# DVI-I-1 - ASUS VG248QE
# DVI-D-0 - SyncMaster

xrandr --output DVI-I-1 --mode 1920x1080 --rate 144

bspc monitor DVI-I-1 -d I II III IV V VI VII
bspc monitor DVI-D-0 -d VIII IX X
