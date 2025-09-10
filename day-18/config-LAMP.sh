# on app servers
sudo dnf install httpd php php-mysqlnd -y
sudo vi /etc/httpd/conf/httpd.conf
sudo systemctl restart httpd
sudo systemctl enable httpd

# on db server
sudo dnf install mariadb-server -y
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql
