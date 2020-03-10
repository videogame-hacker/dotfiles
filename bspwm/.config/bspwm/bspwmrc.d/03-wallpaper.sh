function fetch_wallpaper() {
    TAGS="flower,pink"

    [ -d "/tmp/wallpaper-$USER" ] || mkdir "/tmp/wallpaper-$USER"
    curl -L "https://source.unsplash.com/featured/1920x1080?$TAGS" -o "/tmp/wallpaper-$USER/wallpaper.jpg"
}

if [ ! -f "/tmp/wallpaper-$USER/wallpaper.jpg" ]; then
    fetch_wallpaper
fi

feh --bg-fill "/tmp/wallpaper-$USER/wallpaper.jpg" &
fetch_wallpaper &
