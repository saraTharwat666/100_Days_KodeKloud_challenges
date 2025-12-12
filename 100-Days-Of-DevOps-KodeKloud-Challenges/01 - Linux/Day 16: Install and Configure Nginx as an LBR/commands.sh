ssh loki@stlb01

sudo yum install nginx -y

sudo vi /etc/nginx/nginx.conf # Configure the LBR

sudo systemctl start nginx # Since the start failed, I checked the config file
sudo nginx -t # requires a } at the EOF

sudo systemctl start nginx
sudo systemctl enable nginx


## Check the StaticApp button