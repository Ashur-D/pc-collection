# ==========================
# Install custom cursor
# ==========================

# Ask if the user wants to download Catppuccin mocha dark cursors
read -p "Do you want to install Catppuccin Mocha Dark cursors? (y/n): " install_cursors
if [[ "$install_cursors" =~ ^[Yy]$ ]]; then
  echo "Installing Catppuccin Mocha Dark cursors..."

  # Create icons folder in ~/.local/share if it doesn't exist
  ICONS_DIR="$HOME/.local/share/icons"
  mkdir -p "$ICONS_DIR"

  # Change into the icons directory
  cd "$ICONS_DIR" || exit 1

  # Download the ZIP file
  ZIP_URL="https://github.com/catppuccin/cursors/releases/latest/download/catppuccin-mocha-dark-cursors.zip"
  echo "Downloading Catppuccin cursors zip..."
  curl -LO "$ZIP_URL"

  # Unzip the file and remove the zip
  unzip -o catppuccin-mocha-dark-cursors.zip
  rm catppuccin-mocha-dark-cursors.zip

  # Create the default folder and index.theme
  mkdir -p "$ICONS_DIR/default"
  cat >"$ICONS_DIR/default/index.theme" <<EOF
[Icon Theme]
Inherits=catppuccin-mocha-dark-cursors
EOF

  echo "✅ Catppuccin Mocha Dark cursors installed and set as default (user level)."

  # Set path to Hyprland env config
  HYPR_ENV_FILE="$HOME/.config/hypr/envs.conf"

  # Create the config directory and file if they don't exist
  mkdir -p "$(dirname "$HYPR_ENV_FILE")"
  touch "$HYPR_ENV_FILE"

  # Define the cursor config block
  CURSOR_CONFIG=$(
    cat <<EOF
# Catppuccin cursor theme settings
env = XCURSOR_SIZE,24
env = XCURSOR_THEME,catppuccin-mocha-dark-cursors
env = HYPRCURSOR_SIZE,24
env = HYPRCURSOR_THEME,catppuccin-mocha-dark-cursors
EOF
  )

  # Check if the theme settings are already present
  if grep -q "catppuccin-mocha-dark-cursors" "$HYPR_ENV_FILE"; then
    echo "Cursor theme already set in envs.conf, skipping append."
  else
    echo "Appending cursor theme settings to envs.conf..."
    echo -e "\n$CURSOR_CONFIG" >>"$HYPR_ENV_FILE"
  fi

else
  echo "Skipping Catppuccin cursors installation."
fi
