#!/usr/bin/sh

discord-canary &
nm-applet &
syncthing-gtk &
KEYBASE_START_UI=hideWindow run_keybase &
