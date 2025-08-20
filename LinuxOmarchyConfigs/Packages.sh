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
echo "Updating system..."
sudo pacman -Syu --noconfirm

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
# List of packages and installation
# ==========================

packages=(
  floorp-bin
  vesktop-bin
  yazi
  stacer
  lact
  astroterm
  bottom-git
)

for package in "${packages[@]}"; do
  if pacman -Q "$package" &>/dev/null; then
    echo "$package is already installed, skipping..."
  else
    echo "Installing $package..."
    if yay -S --noconfirm "$package"; then
      echo "$package installed successfully."
    else
      echo "Failed to install $package."
    fi
  fi
done

# ==========================
# Optional: Flatpak Support and Sober/Roblox
# ==========================

read -p "Do you want to install Flatpak? (y/n): " install_flatpak
if [[ "$install_flatpak" =~ ^[Yy]$ ]]; then
  echo "Installing Flatpak..."
  sudo pacman -S --needed --noconfirm flatpak

  # Ask about Sober only if Flatpak was installed
  read -p "Do you want to install Sober (Roblox)? (y/n): " install_sober
  if [[ "$install_sober" =~ ^[Yy]$ ]]; then
    echo "Installing Sober from Flathub..."
    flatpak install -y flathub org.vinegarhq.Sober
  else
    echo "Skipping Sober installation."
  fi

else
  echo "Skipping Flatpak and Sober installation."
fi

# ==========================
# Saves log to downloads
# ==========================
echo "Installation complete at $(date)" | tee -a "$LOGFILE"
echo "Log saved to: $LOGFILE"
