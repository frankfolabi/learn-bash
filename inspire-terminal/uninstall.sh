#!/bin/bash

# Remove Inspire Terminal from .bashrc
sed -i '/# Inspire Terminal/,/fi/d' "$HOME/.bashrc"
rm -rf "$HOME/.tips"

# Reload .bashrc
source "$HOME/.bashrc"

echo "Uninstallation Complete"