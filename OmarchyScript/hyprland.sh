#!/bin/bash

echo
read -rp "Do you want to apply custom Hyprland configs? (y/n): " answer

if [[ ! "$answer" =~ ^[Yy]$ ]]; then
  echo "❌ Skipping Hyprland config setup."
  exit 0
fi

# Paths
TARGET_DIR="$HOME/.config/hypr"
TARGET_CONFIG="$TARGET_DIR/hyprlandoverride.conf"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Check if local config exists
if [[ ! -f "$LOCAL_CONFIG" ]]; then
  echo "❌ Local override config not found at: $LOCAL_CONFIG"
  exit 1
fi

# Append local config to user's override file
echo "⚙️  Appending Hyprland override config..."
cat "$LOCAL_CONFIG" >>"$TARGET_CONFIG"

echo "✅ Hyprland override config applied to $TARGET_CONFIG"
