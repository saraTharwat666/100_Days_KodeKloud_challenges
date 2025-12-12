ssh banner@stapp03 # Connect to the App Server 3

sudo yum install https://rpms.remirepo.net/enterprise/remi-release-9.rpm -y # Install the Remi repo

sudo yum module enable php:remi-8.3 -y # Enable the PHP 8.3 module

sudo yum install nginx php-fpm -y # Install Nginx and PHP-FPM
php-fpm -v

sudo mkdir -p /var/run/php-fpm/ # Create the parent directory for the socket

sudo vi /etc/php-fpm.d/www.conf # Edit the PHP-FPM config file to use the unix socket
# Change the following lines:
# listen = /var/run/php-fpm/default.sock
# user = nginx
# group = nginx

sudo systemctl start php-fpm
sudo systemctl enable php-fpm

sudo vi /etc/nginx/nginx.conf # Edit the Nginx config file

sudo nginx -t # Test the Nginx config file
# nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
# nginx: configuration file /etc/nginx/nginx.conf test is successful

sudo systemctl start nginx
sudo systemctl enable nginx


## From the Jump Host

curl http://stapp03:8098/index.php