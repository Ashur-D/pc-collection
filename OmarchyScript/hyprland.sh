#!/bin/bash

echo
read -rp "Do you want to apply custom Hyprland configs? (y/n): " answer

if [[ ! "$answer" =~ ^[Yy]$ ]]; then
  echo "❌ Skipping Hyprland config setup."
  exit 0
fi

# Define paths
LOCAL_CONFIG="$HOME/Downloads/pc-collection/hyprlandoverride.conf"
TARGET_CONFIG="$HOME/.config/hypr/hyprlandoverride.conf"

# Check if local config file exists
if [[ ! -f "$LOCAL_CONFIG" ]]; then
  echo "❌ Config file not found at: $LOCAL_CONFIG"
  exit 1
fi

# Ensure the target directory exists
mkdir -p "$(dirname "$TARGET_CONFIG")"

# Append (or create) the override config
echo "⚙️  Applying Hyprland override config..."
cat "$LOCAL_CONFIG" >> "$TARGET_CONFIG"

echo "✅ Hyprland override config applied to $TARGET_CONFIG"
