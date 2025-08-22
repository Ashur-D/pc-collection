#!/bin/bash

echo
read -rp "Do you want to apply custom Hyprland configs? (y/n): " answer

if [[ ! "$answer" =~ ^[Yy]$ ]]; then
  echo "❌ Skipping Hyprland config setup."
  exit 0
fi

# Define the local configuration file path.
# IMPORTANT: You must change this path to point to your actual file.
# For example, if your existing config is at ~/my-configs/hyprland-setup.conf, you would use:
# LOCAL_CONFIG="$HOME/my-configs/hyprland-setup.conf"
LOCAL_CONFIG="$HOME/Downloads/pc-collection/hyprlandoverride.conf"
TARGET_CONFIG="$HOME/.config/hypr/hyprlandoverride.conf"

# Ensure the target directory exists
mkdir -p "$(dirname "$TARGET_CONFIG")"

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
