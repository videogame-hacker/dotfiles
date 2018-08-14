#!/usr/bin/sh

discord-canary --start-minimized &
syncthing-gtk -m &
wire-desktop --startup &
# KEYBASE_START_UI=hideWindow run_keybase &
