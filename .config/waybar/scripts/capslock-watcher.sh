#!/bin/bash

previous=""

while true; do
    current=$(hyprctl devices | grep -qi 'capslock: yes' && echo "⇪ CAPS" || echo "")
    if [ "$current" != "$previous" ]; then
        echo "$current"
        previous="$current"
    fi
    sleep 0.2 # check every 200ms
done
