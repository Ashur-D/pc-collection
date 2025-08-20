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
if ! command -v yay &>/dev/null; then
  echo "Installing yay AUR helper..."
  sudo pacman -S --needed git base-devel --noconfirm
  if [[ ! -d "yay" ]]; then
    echo "Cloning yay repository..."
  else
    echo "yay is already Installing"
  fi

  git clone https://aur.archlinux.org/yay.git

  cd yay
  echo "building yay.... yaaaaayyyyy"
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
else
  echo "yay is already installed"
fi

# ==========================
# Optional: List of packages and installation
# ==========================

packages=(
  floorp-bin
  vesktop-bin
  steam
  yazi
  astroterm
)

echo "Do you want to install all packages automatically without being asked for each? (Y/n): "
read -r install_all
install_all=${install_all:-y}

for package in "${packages[@]}"; do
  if pacman -Q "$package" &>/dev/null; then
    echo "$package is already installed, skipping..."
    continue
  fi

  if [[ "$install_all" =~ ^[Yy]$ ]]; then
    echo "Installing $package..."
    if yay -S --noconfirm "$package"; then
      echo "$package installed successfully."
    else
      echo "Failed to install $package."
    fi
  else
    read -p "Do you want to install $package? (Y/n): " choice
    choice=${choice:-y}
    if [[ "$choice" =~ ^[Yy]$ ]]; then
      echo "Installing $package..."
      if yay -S --noconfirm "$package"; then
        echo "$package installed successfully."
      else
        echo "Failed to install $package."
      fi
    else
      echo "Skipping $package."
    fi
  fi
done

# ==========================
# Optional: Flatpak Support and Sober/Roblox
# ==========================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$SCRIPT_DIR/Flatpak.sh"
"$SCRIPT_DIR/Flatpak.sh"

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
# Saves log to downloads
# ==========================
echo "Installation complete at $(date)" | tee -a "$LOGFILE"
echo "Log saved to: $LOGFILE"
