packages=(
  floorp-bin
  vesktop-bin
  steam
  yazi
  astroterm
  asciinema
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
