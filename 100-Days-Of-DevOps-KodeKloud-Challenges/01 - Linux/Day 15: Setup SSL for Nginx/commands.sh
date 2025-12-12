ssh steve@stapp02

sudo yum install nginx -y

sudo mkdir -p /etc/nginx/ssl # Create directory to store certs
sudo mv /tmp/nautilus.crt /etc/nginx/ssl/
sudo mv /tmp/nautilus.key /etc/nginx/ssl/

sudo vi /etc/nginx/nginx.conf

echo "Welcome!" | sudo tee /usr/share/nginx/html/index.html # Create a sample index.html
vi /usr/share/nginx/html/index.html

sudo systemctl restart nginx
sudo systemctl status nginx


## From the Jump Host

curl -Ik https://stapp02/