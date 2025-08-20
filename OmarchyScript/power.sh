# Show current power profile
current_profile=$(powerprofilesctl get)
echo
echo "Current power profile: $current_profile"
echo

# Ask the user if they want to change it
read -rp "Do you want to change your power profile? (y/n): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
  echo
  echo "Choose a power profile:"
  echo "1) performance"
  echo "2) balanced"
  echo "3) power-saver"
  read -rp "Enter the number of your choice: " choice

  case "$choice" in
  1)
    profile="performance"
    ;;
  2)
    profile="balanced"
    ;;
  3)
    profile="power-saver"
    ;;
  *)
    echo "❌ Invalid choice. Exiting without changing power profile."
    exit 1
    ;;
  esac

  echo
  echo "Setting power profile to '$profile'..."
  powerprofilesctl set "$profile" || {
    echo "❌ Failed to set power profile. Your system may not support this mode."
    exit 1
  }
else
  echo "⚙️  Power profile change skipped."
fi
