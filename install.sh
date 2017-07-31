#!/bin/bash

# Download rclone
wget https://github.com/ncw/rclone/releases/download/v1.37/rclone-v1.37-linux-amd64.zip
unzip rclone-v1.37-linux-amd64.zip
mv rclone-v1.37-linux-amd64/rclone .

# Insert Google token
sed -i 's#token =#token = '"$GDRIVE_TOKEN"'#' rclone.conf

# Copy rclone config
mkdir -p .config/rclone
cp rclone.conf .config/rclone/rclone.conf
