#!/bin/bash

# ==========================
# logs the entire script and saves to downloads
# ==========================
LOGFILE=~/Downloads/install_log_$(date +"%Y-%m-%d_%H-%M-%S").log
exec > >(tee -a "$LOGFILE") 2>&1

# ==========================
### clears before starting, quits if an error occurs and updates the system
# ==========================
clear
set -e

read -p "Would you like to update your system? (y/n): " answer
if [[ "$answer" =~ ^[Yy]$ ]]; then
  sudo pacman -Syu
else
  echo "Skipping system update."
fi

# ==========================
# installs yay if not already installed
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/yay.sh"
"$SCRIPT_DIR/yay.sh"

# ==========================
# Optional: List of packages and installation
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/packages.sh"
"$SCRIPT_DIR/packages.sh"

# ==========================
# Optional: Flatpak Support and Sober/Roblox
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/flatpak.sh"
"$SCRIPT_DIR/flatpak.sh"

# ==========================
# Optional: Install custom cursor
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/cappuccincursor.sh"
"$SCRIPT_DIR/cappuccincursor.sh"

# ==========================
# Optional: Install Yazi config
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/yazi.sh"
"$SCRIPT_DIR/yazi.sh"

# ==========================
# Optional: Change power plan
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/power.sh"
"$SCRIPT_DIR/power.sh"

# ==========================
# Optional: Apply hyprland config
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/hyprland.sh"
"$SCRIPT_DIR/hyprland.sh"

# ==========================
# Saves log to downloads
# ==========================
echo "Installation complete at $(date)" | tee -a "$LOGFILE"
echo "Log saved to: $LOGFILE"
