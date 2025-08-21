#!/bin/bash

# Update package repository
sudo yum update -y

# Install Java 8 or 11 (Tomcat requirement)
sudo yum install java-1.8.0-openjdk java-1.8.0-openjdk-devel -y

# Verify Java installation
java -version

# Create a dedicated tomcat user for security
sudo useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat

# Navigate to /tmp directory
cd /tmp

# Download Tomcat 9 (adjust version as needed)
sudo wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.65/bin/apache-tomcat-9.0.65.tar.gz

# Extract Tomcat
sudo tar -xzf apache-tomcat-9.0.65.tar.gz

# Move to installation directory
sudo mv apache-tomcat-9.0.65 /opt/tomcat/

# Create symbolic link for easier management
sudo ln -s /opt/tomcat/apache-tomcat-9.0.65 /opt/tomcat/latest

# Set proper ownership
sudo chown -R tomcat:tomcat /opt/tomcat/

sudo sed -i '/<Connector port="8080" protocol="HTTP\/1.1"/ s/port="8080"/port="6000"/' /opt/tomcat/latest/conf/server.xml
