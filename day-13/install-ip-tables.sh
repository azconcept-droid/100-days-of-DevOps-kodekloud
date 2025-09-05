LBR_HOST_IP=172.16.238.14
sudo dnf install iptables-services -y

# Enable and start iptables service
sudo systemctl enable iptables
sudo systemctl start iptables

# Allow traffic from LBR host on port 8088
sudo iptables -I INPUT 5 -p tcp --dport 8088 -s $LBR_HOST_IP -j ACCEPT

# Block all other traffic on port 8088
sudo iptables -A INPUT -p tcp --dport 8088 -j DROP

# Save the rules
sudo service iptables save
