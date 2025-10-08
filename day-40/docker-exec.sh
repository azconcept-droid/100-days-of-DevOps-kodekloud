#!/bin/bash
# This script installs and configures Apache2 in a Docker container.
docker exec kkloud apt install -y apache2 
docker exec kkloud service apache2 status
docker exec kkloud sed -i 's/80/8085/g' /etc/apache2/ports.conf
docker exec kkloud service apache2 start
docker exec kkloud service apache2 status
