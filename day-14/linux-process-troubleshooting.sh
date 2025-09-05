#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-09-05
# Description: This script configures Apache to listen on port 5003. on APP1
# Usage: sudo ./linux-process-troubleshooting.sh

# Check status
sudo systemctl status httpd

sudo netstat -tlnp | grep :8084

# Move sendmail to port 25 (common alternative)
# Change 5003 to 25
sudo sed -i 's/5003/25/g' /etc/mail/sendmail.mc

sudo m4 /etc/mail/sendmail.mc | sudo tee /etc/mail/sendmail.cf

sudo systemctl restart sendmail

sudo systemctl restart httpd