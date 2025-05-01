#!/bin/bash

# Uninstall Inspire Terminal
if grep -Fxq '# Inspire Terminal' "$HOME/.bashrc"; then
  # Remove Inspire Terminal from .bashrc
  sed -i '/# Inspire Terminal/,/fi/d' "$HOME/.bashrc"
  rm -rf "$HOME/.tips"

  # Reload .bashrc
  source "$HOME/.bashrc"
  echo "Uninstallation complete. See you again."

else
  echo "You don't have the Inspire Terminal."
  echo "Do you want to install it? (y/n)"
  read -n 1 -s answer
  if [[ $answer == [Yy] ]]; then
    bash install.sh
  else
    echo "Inspire Terminal not installed."
    exit 1
  fi
fi
