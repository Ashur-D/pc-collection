# ==========================
# Adds the yazi wrapper for the terminal
# ==========================

# This script automates the setup for the yazi file manager by copying
# existing configuration files and adding a shell wrapper.
# This version is more robust at handling the shell wrapper to prevent duplicates.

# Define the source and destination paths based on the user's request.
SOURCE_DIR="$HOME/Downloads/pc-collection/OmarchyScript/yazi/"
DEST_DIR="$HOME/.config/yazi"

# Check if yazi is installed using the 'pacman' package manager.
if pacman -Q yazi &>/dev/null; then
  echo "Yazi is installed. Proceeding with configuration setup."

  # Check if the source directory with your config files exists.
  if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error: The source directory '$SOURCE_DIR' was not found."
    echo "Please ensure the folder exists and contains your configuration files."
    exit 1
  fi

  # Check for yazi.toml.
  if [ ! -f "$SOURCE_DIR/yazi.toml" ]; then
    echo "Error: The file '$SOURCE_DIR/yazi.toml' was not found."
    echo "Please check the filename and ensure it is in the correct folder."
    exit 1
  fi

  # Check for keymap.toml (or keymaps.toml).
  KEYMAP_FILE=""
  if [ -f "$SOURCE_DIR/keymaps.toml" ]; then
    KEYMAP_FILE="$SOURCE_DIR/keymaps.toml"
  elif [ -f "$SOURCE_DIR/keymap.toml" ]; then
    KEYMAP_FILE="$SOURCE_DIR/keymap.toml"
  else
    echo "Error: Neither '$SOURCE_DIR/keymaps.toml' nor '$SOURCE_DIR/keymap.toml' were found."
    echo "Please check your keymap filename."
    exit 1
  fi

  # Create the yazi configuration directory if it does not already exist.
  mkdir -p "$DEST_DIR"

  # Copy the user's configuration files to the correct yazi directory.
  echo "Copying your existing yazi.toml and keymap file to $DEST_DIR..."
  cp "$SOURCE_DIR/yazi.toml" "$DEST_DIR/"
  cp "$KEYMAP_FILE" "$DEST_DIR/keymap.toml" # Always name the destination file keymap.toml for consistency
  echo "Configuration files copied successfully."

  # --- Add the Yazi shell wrapper to ~/.bashrc ---
  echo "You can now add the shell wrapper function to your ~/.bashrc file to enable directory changing."
  read -p "Do you want to add the Yazi shell wrapper function to your ~/.bashrc? (y/n): " add_wrapper
  if [[ "$add_wrapper" =~ ^[Yy]$ ]]; then
    WRAPPER_START="# --- yazi shell wrapper ---"
    WRAPPER_END="# --- end yazi wrapper ---"
    WRAPPER_CONTENT=$(
      cat <<'EOF'
# --- yazi shell wrapper ---
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}
# --- end yazi wrapper ---
EOF
    )

    # Use sed to remove any existing wrapper block before adding the new one.
    # The 'd' command deletes lines that match a certain pattern.
    # The '//' in the pattern allows for a simpler syntax.
    sed -i "/$WRAPPER_START/,/$WRAPPER_END/d" "$HOME/.bashrc"

    # Check if the wrapper was successfully removed before adding.
    if ! grep -q "$WRAPPER_START" "$HOME/.bashrc"; then
      echo "$WRAPPER_CONTENT" >>"$HOME/.bashrc"
      echo "Yazi shell wrapper added to ~/.bashrc."
    else
      echo "Something went wrong. The old wrapper could not be removed."
    fi
  else
    echo "Skipping adding Yazi shell wrapper to ~/.bashrc."
  fi

else
  echo "Yazi is not installed — skipping setup."
fi
