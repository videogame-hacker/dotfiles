#!/usr/bin/sh

ibus-daemon -dr &

discord-canary --start-minimized &
syncthing -no-browser & # syncthing-gtk -m &
wire-desktop --startup &
# KEYBASE_START_UI=hideWindow run_keybase &
