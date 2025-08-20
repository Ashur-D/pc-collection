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
