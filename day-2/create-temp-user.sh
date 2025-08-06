#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-06
# Description: This script creates a temporary user for a specific task and expires after the task is complete.
# Usage: Run this script with root privileges to create the user. ./create-temp-user.sh

useradd -e 2024-01-28 -c "Temporary user for specific task" mariyam
if [ $? -eq 0 ]; then
    echo "Temporary user 'mariyam' created successfully."
else
    echo "Failed to create temporary user 'mariyam'."
    exit 1
fi
