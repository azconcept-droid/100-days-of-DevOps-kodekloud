
sudo dnf install -y nginx
sudo systemctl status nginx
sudo systemctl enable nginx

sudo mkdir -p /etc/ssl/certs
sudo mkdir -p /etc/ssl/private

sudo mv nautilus.crt /etc/ssl/certs/nautilus.crt
sudo mv nautilus.key /etc/ssl/private/nautilus.key

sudo chmod 644 /etc/ssl/certs/nautilus.crt
sudo chmod 600 /etc/ssl/private/nautilus.key

cd /etc/nginx/conf.d/

sudo vi nautilus-ssl.conf
echo "Welcome!" | sudo tee /var/www/html/index.html

sudo mkdir -p /var/www/html
echo "Welcome!" | sudo tee /var/www/html/index.html
cd /var/www/html

sudo touch index.html
echo "Welcome!" | sudo tee /var/www/html/index.html
sudo chown nginx:nginx /var/www/html/index.html
sudo chmod 644 /var/www/html/index.html

sudo nginx -t
sudo systemctl reload nginx
sudo systemctl status nginx
ls -la /var/www/html/index.html
cat /var/www/html/index.html
curl -Ik https://localhost
