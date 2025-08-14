#!/bin/bash

# xFusionCorp Industries - Official Website Backup Script
# Location: /scripts/official_backup.sh
# Purpose: Create backup of official website and copy to backup server

# Configuration
SOURCE_DIR="/var/www/html/beta"
BACKUP_DIR="/backup"
ARCHIVE_NAME="xfusioncorp_beta.zip"
BACKUP_SERVER="172.16.238.16"  # Replace with actual server hostname/IP
BACKUP_USER="clint"               # Replace with actual backup server username
REMOTE_BACKUP_DIR="/backup"
LOG_FILE="/var/log/official_backup.log"

# Function to log messages with timestamp
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# Function to check if command executed successfully
check_status() {
    if [ $? -eq 0 ]; then
        log_message "SUCCESS: $1"
    else
        log_message "ERROR: $1"
        exit 1
    fi
}

# Start backup process
log_message "Starting backup process for xFusionCorp official website"

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    log_message "ERROR: Source directory $SOURCE_DIR does not exist"
    exit 1
fi

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
    log_message "Creating backup directory: $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
    check_status "Backup directory creation"
fi

# Change to the parent directory of source to create proper archive structure
cd "$(dirname "$SOURCE_DIR")"
check_status "Changed to directory $(dirname "$SOURCE_DIR")"

# Create zip archive with timestamp for uniqueness
ARCHIVE_PATH="$BACKUP_DIR/$ARCHIVE_NAME"

log_message "Creating zip archive: $ARCHIVE_PATH"
zip -r "$ARCHIVE_PATH" "$(basename "$SOURCE_DIR")" > /dev/null 2>&1
check_status "Zip archive creation"

# Copy both the timestamped and main archive
scp -o StrictHostKeyChecking=no -o BatchMode=yes "$ARCHIVE_PATH" "${BACKUP_USER}@${BACKUP_SERVER}:${REMOTE_BACKUP_DIR}/"
check_status "Remote copy of archive"

# Verify local archive integrity
log_message "Verifying local archive integrity"
zip -T "$ARCHIVE_PATH" > /dev/null 2>&1
check_status "Archive integrity verification"

# Final status
log_message "Backup process completed successfully"
log_message "Local archive: $ARCHIVE_PATH"
log_message "Remote location: ${BACKUP_USER}@${BACKUP_SERVER}:${REMOTE_BACKUP_DIR}/"

echo "Backup completed successfully!"
echo "Archive: $ARCHIVE_PATH"
echo "Size: $ARCHIVE_SIZE"