#!/bin/bash
# Show hotkeys in a macOS dialog - simple and fast

osascript << 'EOF'
display dialog "AEROSPACE KEYBOARD SHORTCUTS

WORKSPACES
⌘ + 1-7              Switch workspace
⌘ + ⇧ + 1-7          Move window to workspace
⌘ + Tab              Toggle last workspace

WINDOW FOCUS
⌘ + H/J/K/L          Focus direction
⌘ + ⇧ + H/J/K/L      Move window

APP LAUNCHERS
⌘ + ⇧ + Enter        iTerm
⌘ + ⇧ + B            Chrome
⌘ + ⇧ + C            VS Code
⌘ + ⇧ + S            Slack
⌘ + ⇧ + A            ChatGPT

SCREENSHOTS
⌘ + ⌥ + 3/4/5        Screenshots

CONFIG
⌘ + ⇧ + R            Reload configs" buttons {"OK"} default button "OK" with title "Hotkeys"
EOF
