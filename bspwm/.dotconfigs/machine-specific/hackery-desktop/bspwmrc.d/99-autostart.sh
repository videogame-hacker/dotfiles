#!/usr/bin/sh

discord-canary --start-minimized &
nm-applet &
syncthing-gtk -m &
KEYBASE_START_UI=hideWindow run_keybase &
