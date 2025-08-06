#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-05
# Description: This script creates a user that cannot log in interactively, typically used for running background tasks or services.
# Usage: Run this script with root privileges to create the user. ./create-no-interactive-login-user.sh

useradd -s /sbin/nologin -c "Run database backup agents" -M james
if [ $? -eq 0 ]; then
    echo "User 'james' created successfully with no interactive login."
else
    echo "Failed to create user 'james'."
    exit 1
fi
