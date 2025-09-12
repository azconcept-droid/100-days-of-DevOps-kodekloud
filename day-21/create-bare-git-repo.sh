#!/bin/bash
# Create a bare git repository in /opt/beta.git
sudo yum install -y git

sudo git init --bare /opt/beta.git
