#!/usr/bin/zsh

name=$(rofi -dmenu -p New)

mkdir -p "$HOME/ctf/$name/downloads" "$HOME/ctf/$name/misc" "$HOME/ctf/$name/solution"
(cd "$HOME/ctf/$name/" && exec alacritty)
