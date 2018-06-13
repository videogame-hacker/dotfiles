#!/usr/bin/bash

WALLPAPERS=(
    "https://images.unsplash.com/photo-1506348424954-b03ae28965ec"
    "https://images.unsplash.com/photo-1441805983468-f5a1a9f985fb"
    "https://images.unsplash.com/photo-1523650126631-9fafa6ed33fc"
    "https://images.unsplash.com/photo-1502533609822-c877fe10f870"
)

function fetch() {
    for i in "${!WALLPAPERS[@]}"; do
        wget -O "$HOME/.wallpapers/wallpaper-$i.jpg" "${WALLPAPERS[$i]}" &
    done

    wait $(jobs -p)
}

last=#WALLPAPERS[@]-1

if [ ! -f "$HOME/.wallpapers/wallpaper-${last}.jpg" ]; then
    fetch
fi

feh --randomize --bg-fill "$HOME/.wallpapers/"
