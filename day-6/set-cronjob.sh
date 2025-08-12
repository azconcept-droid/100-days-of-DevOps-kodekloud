#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-10
# Description: This script set cronjob.
# Usage: sudo ./set-cronjob.sh

yum install -y cronie
systemctl start crond
systemctl enable crond
crontab -u root -e
