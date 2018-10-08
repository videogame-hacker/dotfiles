#!/usr/bin/bash

WALLPAPERS=(
    "https://images.unsplash.com/photo-1506348424954-b03ae28965ec"
    "https://images.unsplash.com/photo-1461884430365-0a87b6123549"
    "https://images.unsplash.com/photo-1523650126631-9fafa6ed33fc"
    "https://images.unsplash.com/photo-1502533609822-c877fe10f870"
    "https://images.unsplash.com/photo-1505526484636-f0a465cf6d19"
    "https://images.unsplash.com/photo-1498036882173-b41c28a8ba34"
    "https://images.unsplash.com/photo-1517176910664-8106c69b644a"
    "https://images.unsplash.com/photo-1473711186548-79d2ee78cdec"
    "https://images.unsplash.com/photo-1511447333015-45b65e60f6d5"
    "https://images.unsplash.com/photo-1487958449943-2429e8be8625"
    "https://images.unsplash.com/photo-1517893963562-c728bb98e2c9"   
)

function fetch() {
    mkdir "$HOME/.wallpapers/images/"

    for i in "${!WALLPAPERS[@]}"; do
        if [ ! -f "$HOME/.wallpapers/images/wallpaper-$i.jpg" ]; then
            wget -O "$HOME/.wallpapers/images/wallpaper-$i.jpg" "${WALLPAPERS[$i]}" &
        fi
    done

    wait $(jobs -p)
}

last=`expr ${#WALLPAPERS[@]} - 1`
if [ ! -f "$HOME/.wallpapers/images/wallpaper-${last}.jpg" ]; then
    fetch
fi

feh --randomize --bg-fill "$HOME/.wallpapers/images"
