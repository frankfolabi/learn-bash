#!/bin/bash

# Create tips directory and copy files
mkdir -p "$HOME/.tips"
cp ./*_tips "$HOME/.tips"

# Append block to .bashrc 
tee -a "$HOME/.bashrc" <<'EOF'

# Inspire Terminal
if [ -f "$HOME/.tips/inspiration_tips" ] && [ -f "$HOME/.tips/devops_tips" ]; then
    shuf -n 1 $HOME/.tips/inspiration_tips 
    echo "---" 
    shuf -n 1 $HOME/.tips/devops_tips
fi
EOF

# Reload .bashrc
source "$HOME/.bashrc"

