sudo yum install nginx -y

sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak

sudo vi /etc/nginx/nginx.conf

sudo nginx -t

sudo systemctl restart nginx
sudo systemctl enable nginx
