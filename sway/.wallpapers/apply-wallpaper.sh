#!/usr/bin/bash

WALLPAPER_URL="https://source.unsplash.com/featured/1920x1080?urban,night,nature,water"

function fetch() {
    [ -d "$HOME/.wallpapers/images" ] || mkdir "$HOME/.wallpapers/images"
    curl -L "$WALLPAPER_URL" -o "$HOME/.wallpapers/images/wallpaper.jpg"
}

if [ ! -f "$HOME/.wallpapers/images/wallpaper.jpg" ]; then
    fetch
fi

killall swaybg
swaybg -i "$HOME/.wallpapers/images/wallpaper.jpg" -m fill &
sleep 1
fetch
