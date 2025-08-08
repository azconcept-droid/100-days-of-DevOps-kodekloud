#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-07
# Description: This script configures SSH to disallow root login.
# Usage: sudo ./block-root-login.sh

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root." >&2
    exit 1
fi

echo "Configuring SSH to disallow root login..."
sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config

echo "Testing SSH configuration..."
sshd -t

if [ $? -ne 0 ]; then
    echo "SSH configuration test failed." >&2
    exit 1
fi

echo "Restarting SSH service to apply changes..."
systemctl restart sshd
