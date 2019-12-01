#!/usr/bin/zsh

set name=$(rofi -dmenu -p New)

mkdir -p "~/ctf/$name/{downloads,misc,solution}"
(cd "~/ctf/$name/" && exec alacritty)
