#!/bin/bash

# Inspire Terminal is a script to randonly display Inspiration and Devops tips on the terminal
# The tips are shown each time the terminal is launched.


# Create tips directory and copy files
mkdir -p "$HOME/.tips"
cp ./*_tips "$HOME/.tips"

# Check if Inspire Terminal already installed
if grep -Fxq '# Inspire Terminal' "$HOME/.bashrc"; then
  echo "Inspire Terminal is already installed. Exiting . . ."
  exit 1
else
# Append block to .bashrc 
tee -a "$HOME/.bashrc" > /dev/null <<'EOF'

# Inspire Terminal
if [ -f "$HOME/.tips/inspiration_tips" ] && [ -f "$HOME/.tips/devops_tips" ]; then
   shuf -n 1 $HOME/.tips/inspiration_tips 
   echo "---" 
   shuf -n 1 $HOME/.tips/devops_tips
fi
EOF
fi

# Reload .bashrc
source "$HOME/.bashrc"

echo "Installation completed. Enjoy your terminal."