# in jump server
scp -r /home/thor/ecommerce steve@stapp02:/tmp/
scp -r /home/thor/games steve@stapp02:/tmp/

# in app server 2
sudo dnf install -y httpd

sudo sed -i 's/^Listen 80$/Listen 5000/' /etc/httpd/conf/httpd.conf
scp -r /home/thor/ecommerce steve@stapp02:/var/www/html/
scp -r /home/thor/games steve@stapp02:/var/www/html/
sudo systemctl start httpd
sudo systemctl enable httpd


sudo mv /tmp/ecommerce/ /var/www/html/
sudo mv /tmp/games/ /var/www/html/

sudo chown -R apache:apache /var/www/html/ecommerce /var/www/html/games
 
sudo tee /etc/httpd/conf.d/sites.conf > /dev/null <<EOF
<VirtualHost *:5000>
    DocumentRoot "/var/www/html"

    Alias /ecommerce/ "/var/www/html/ecommerce/"
    <Directory "/var/www/html/ecommerce/">
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    Alias /games/ "/var/www/html/games/"
    <Directory "/var/www/html/games/">
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>
</VirtualHost>
EOF

sudo systemctl restart httpd

curl http://localhost:5000/ecommerce/
curl http://localhost:5000/games/
