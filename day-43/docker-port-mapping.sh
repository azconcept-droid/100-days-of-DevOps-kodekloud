#!/bin/bash
# This script runs an Nginx container with port mapping.
docker run -d -p 8088:80 --name=cluster nginx:stable