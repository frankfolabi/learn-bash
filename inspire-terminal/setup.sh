#!/bin/bash

# Move all *_tips files to the user's home directory
mv ./*_tips /home/$USER

# Write the following to the .bashrc 
tee -a ~/.bashrc <<EOF
echo "shuf -n 1 /home/\$USER/inspiration_tips" 
echo "" 
echo "shuf -n 1 /home/\$USER/devops_tips"
EOF

# Reload the .bashrc
source ~/.bashrc

