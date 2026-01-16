#!/bin/bash
# Screenshot wrapper - saves to Documents/Screenshots with timestamp

DIR="$HOME/Documents/Screenshots"
mkdir -p "$DIR"
FILE="$DIR/screenshot-$(date +%Y%m%d-%H%M%S).png"

case "$1" in
    full)
        # Small delay to ensure everything renders, then capture all screens
        sleep 0.1
        screencapture "$FILE"
        ;;
    selection)
        screencapture -i "$FILE"
        ;;
    interactive)
        # Opens native screenshot UI (same as Cmd+Shift+5 normally)
        open -a "Screenshot"
        ;;
esac
