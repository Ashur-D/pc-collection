if ! command -v yay &>/dev/null; then
  echo "Installing yay AUR helper..."
  sudo pacman -S --needed git base-devel --noconfirm

  if [[ ! -d "yay" ]]; then
    echo "Cloning yay repository..."
    git clone https://aur.archlinux.org/yay.git
  else
    echo "yay directory already exists, skipping clone."
  fi

  cd yay || exit
  echo "Building yay... yaaaaayyyyy"
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
else
  echo "yay is already installed"
fi
