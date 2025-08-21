#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-21
# Description: This script configures Apache to listen on port 8084.
# Usage: sudo ./debug-apache2.sh

# Check status
sudo systemctl status httpd

sudo netstat -tlnp | grep :8084

# Move sendmail to port 25 (common alternative)
# Change 8084 to 25
sudo sed -i 's/8084/25/g' /etc/mail/sendmail.mc

sudo m4 /etc/mail/sendmail.mc | sudo tee /etc/mail/sendmail.cf

sudo systemctl restart sendmail

sudo systemctl restart httpd

sudo iptables -I INPUT 1 -p tcp --dport 8084 -j ACCEPT

sudo service iptables save
