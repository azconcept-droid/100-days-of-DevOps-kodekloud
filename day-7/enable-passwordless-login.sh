#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-11
# Description: This script enable passwordless remote login.
# Usage: sudo ./enable-passwordless-login

# Generate SSH key pair (if not already exists)
ssh-keygen -t rsa -b 4096 -C "thor@jumphost"

# Create server mapping file
cat > ~/server_config.txt << 'EOF'
# Format: server_ip:sudo_username
172.16.238.10:tony
172.16.238.11:steve
172.16.238.12:banner
# Add more servers as needed
EOF

# For each server, copy the key to the respective sudo user
# note: you have to provide password for each user to authenticate ssh-copy-id
while IFS=':' read -r server sudo_user; do
    [[ $server =~ ^#.*$ ]] && continue  # Skip comments
    echo "Copying key to $sudo_user@$server"
    ssh-copy-id -i ~/.ssh/id_rsa.pub $sudo_user@$server
done < ~/server_config.txt
