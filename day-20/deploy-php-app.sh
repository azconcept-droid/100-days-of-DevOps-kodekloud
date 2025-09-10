sudo dnf install -y nginx
sudo vi /etc/nginx/conf.d/default.conf   # CentOS/RHEL
sudo systemctl start nginx
sudo systemctl enable nginx

sudo dnf install -y epel-release
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module reset php -y
sudo dnf module enable php:remi-8.2 -y
sudo dnf install -y php php-fpm php-cli php-common

# configure php-fpm to run as nginx user
sudo vi /etc/php-fpm.d/www.conf     # CentOS/RHEL
sudo mkdir -p /var/run/php-fpm
sudo chown -R nginx:nginx /var/run/php-fpm
sudo systemctl restart php-fpm
sudo systemctl enable --now php-fpm
sudo systemctl enable --now nginx
sudo systemctl reload nginx

