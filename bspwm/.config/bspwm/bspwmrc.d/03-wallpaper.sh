WALLPAPER_LOCATION="$HOME/.cache/.wallpaper.jpg"

function fetch_wallpaper() {
    TAGS="flower,pink,leaves"

    curl -L "https://source.unsplash.com/random/1920x1080?$TAGS" -o "$WALLPAPER_LOCATION.dl"
    mv "$WALLPAPER_LOCATION.dl" "$WALLPAPER_LOCATION"
}

if [ ! -f "$WALLPAPER_LOCATION" ]; then
    fetch_wallpaper
fi

feh --bg-fill "$WALLPAPER_LOCATION" &
fetch_wallpaper &
