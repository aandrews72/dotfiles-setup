
#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers/"
LOGFILE="$HOME/wallpaper_change.log"

echo "$(date): Script started" >> "$LOGFILE"

# Export necessary environment variables
export XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR
export WAYLAND_DISPLAY=$WAYLAND_DISPLAY

while true; do

    # Select a random wallpaper
    RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    echo "$(date): Changing wallpaper to $RANDOM_WALLPAPER" >> "$LOGFILE"

    # Start swaybg with the selected wallpaper
    swaybg -i "$RANDOM_WALLPAPER" -m fill 2>> "$LOGFILE"

    # Sleep for 10 seconds (change to 600 for 10 minutes)
    sleep 300

    # Kill any existing swaybg processes
    pkill swaybg
done
