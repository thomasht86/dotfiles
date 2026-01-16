#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Aerospace Hotkeys
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon keyboard
# @raycast.packageName Aerospace

# Documentation:
# @raycast.description Show all Aerospace keyboard shortcuts
# @raycast.author Thomas
# @raycast.authorURL https://github.com/thomasht86

CONFIG="$HOME/.config/aerospace/aerospace.toml"

echo "=== AEROSPACE KEYBOARD SHORTCUTS ==="
echo ""

echo "--- WORKSPACES ---"
echo "Cmd + 1-7          Switch to workspace"
echo "Cmd + Shift + 1-7  Move window to workspace"
echo "Cmd + Tab          Toggle last workspace"
echo "Cmd + Shift + Tab  Move workspace to monitor"
echo ""

echo "--- WINDOW FOCUS ---"
echo "Cmd + H/J/K/L      Focus left/down/up/right"
echo "Cmd + Shift + H/J/K/L  Move window"
echo ""

echo "--- APP LAUNCHERS ---"
echo "Cmd + K            Raycast (this menu)"
echo "Cmd + Shift + Enter  New iTerm window"
echo "Cmd + Shift + B    New Chrome window"
echo "Cmd + Shift + C    New VS Code window"
echo "Cmd + Shift + S    Open Slack"
echo "Cmd + Shift + A    Open ChatGPT"
echo ""

echo "--- SCREENSHOTS ---"
echo "Cmd + Alt + 3      Screenshot full screen"
echo "Cmd + Alt + 4      Screenshot selection"
echo "Cmd + Alt + 5      Interactive screenshot"
echo ""

echo "--- CONFIG ---"
echo "Cmd + Shift + R    Reload all configs"
echo "Cmd + Shift + ;    Service mode"
echo "  then: r = reset layout, f = toggle float"
