#!/bin/bash

# Move all *_tips files to the user's home directory
mkdir /home/$USER/.tips
mv ./*_tips /home/$USER/.tips

# Write the following to the .bashrc 
tee -a ~/.bashrc <<EOF
shuf -n 1 /home/\$USER/.tips/inspiration_tips 
echo "---" 
shuf -n 1 /home/\$USER/.tips/devops_tips
EOF

# Reload the .bashrc
source ~/.bashrc

