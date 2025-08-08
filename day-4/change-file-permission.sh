#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-08
# Description: This script changes the permission of a file to make it executable.
# Usage: sudo ./change-file-permission.sh

if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root." >&2
    exit 1
fi
# Change the permission of the script to be executable
chmod 755 /tmp/xfusioncorp.sh
