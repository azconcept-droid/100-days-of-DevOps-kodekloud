#!/bin/bash
# Author: Yahaya Azeez
# Date: 2025-08-09
# Description: This script installed and configures selinux to be permanently disabled.
# Usage: sudo ./disable-selinux.sh

yum install -y policycoreutils policycoreutils-python-utils selinux-policy selinux-policy-targeted libselinux-utils
sed -i 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
