#!/bin/bash

# Set the path to the playlist files
PLAYLIST_DIR=~/.config/retroarch/playlists/

# Set the Wine drive path and the corresponding Linux path
WINE_DRIVE="D://"
LINUX_PATH="/mnt/storage/ROMs/"

# Loop through all playlist files in the directory
for FILE in "$PLAYLIST_DIR"/*.lpl; do
  # Check if the file exists
  if [ -f "$FILE" ]; then
    # Use sed to replace the Wine drive path with the Linux path
    sed -i "s|$WINE_DRIVE|$LINUX_PATH|g" "$FILE"
    echo "Fixed playlist file: $FILE"
  fi
done
