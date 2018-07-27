#!/usr/bin/bash

trim() {
    local var="$*"
    # remove leading whitespace characters
    var="${var#"${var%%[![:space:]]*}"}"
    # remove trailing whitespace characters
    var="${var%"${var##*[![:space:]]}"}"   
    echo -n "$var"
}

uim_status_dump=$(uim-status)

active_im=$(echo "$uim_status_dump" | grep branch | cut -d $'\n' -f 1 | cut -d $'\t' -f 2)
im_status=$(echo "$uim_status_dump" | grep branch | cut -d $'\t' -f 3 | tr $'\n' ' ' | cut -d ' ' -f 1 --complement)
im_status=$(trim $im_status)

echo "  $active_im ($im_status)"
