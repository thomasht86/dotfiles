#!/bin/bash
# Optimized: Only updates current + previous workspace, sources icon_map as function

CONFIG_DIR="$HOME/.config/sketchybar"

# Source the icon map function instead of spawning subprocess for each app
source "$CONFIG_DIR/plugins/icon_map_fn.sh"

update_space_icons() {
    local sid=$1
    local apps
    apps=$(aerospace list-windows --workspace "$sid" 2>/dev/null | awk -F'|' '{gsub(/^ *| *$/, "", $2); print $2}')

    if [ -n "$apps" ]; then
        icon_strip=" "
        while IFS= read -r app; do
            [ -z "$app" ] && continue
            icon_map "$app"  # Sets icon_result variable
            icon_strip+=" $icon_result"
        done <<< "$apps"
    else
        icon_strip=""
    fi
    sketchybar --set space.$sid label="$icon_strip" drawing=on
}

# Only update affected workspaces (current + previous) instead of ALL workspaces
# Environment variables are set by aerospace exec-on-workspace-change
if [ -n "$AEROSPACE_FOCUSED_WORKSPACE" ]; then
    update_space_icons "$AEROSPACE_FOCUSED_WORKSPACE"
fi

if [ -n "$AEROSPACE_PREV_WORKSPACE" ] && [ "$AEROSPACE_PREV_WORKSPACE" != "$AEROSPACE_FOCUSED_WORKSPACE" ]; then
    update_space_icons "$AEROSPACE_PREV_WORKSPACE"
fi
