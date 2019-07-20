#!/usr/bin/sh

MONITORS=( $(bspc query -M --names) )

bspc monitor ${MONITORS[2]} -d 1 2 3 4 5 6 7
bspc monitor ${MONITORS[1]} -d 8 9 10
