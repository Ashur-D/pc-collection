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
LOCAL_CONFIG="$HOME/Downloads/pc-collection/hyprlandoverride.conf"

# Ensure the target directory exists
mkdir -p "$TARGET_DIR"

# Check if local config exists, if not, create it
if [[ ! -f "$LOCAL_CONFIG" ]]; then
  echo "❌ Local override config not found at: $LOCAL_CONFIG"
  echo "📄 Creating a new, empty file at $LOCAL_CONFIG"
  touch "$LOCAL_CONFIG"
  
  # Exit if we just created a blank file, as there's nothing to append
  if [[ ! -s "$LOCAL_CONFIG" ]]; then
    echo "📄 A new, empty file was created. Nothing to append."
    exit 0
  fi
fi

# Append local config to user's override file
echo "⚙️  Appending Hyprland override config..."
cat "$LOCAL_CONFIG" >>"$TARGET_CONFIG"

echo "✅ Hyprland override config applied to $TARGET_CONFIG"
