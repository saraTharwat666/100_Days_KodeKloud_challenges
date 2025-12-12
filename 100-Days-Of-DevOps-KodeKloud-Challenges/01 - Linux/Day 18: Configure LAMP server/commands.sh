## Connect to the 3 App Servers: stapp01, stapp02, stapp03
ssh tony@stapp01

sudo yum install httpd php php-mysqlnd -y # Install httpd, php and its dependencies

sudo vi /etc/httpd/conf/httpd.conf # Change the Listen port to 5003
# Listen 5003

sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd


## Configure the DB Server: stdb01

ssh peter@stdb01

sudo yum install mariadb-server -y # Install/Configure MariaDB server on DB Server

sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo systemctl status mariadb

sudo mysql # access the MariaDB prompt

CREATE DATABASE kodekloud_db9;

CREATE USER 'kodekloud_cap' IDENTIFIED BY 'TmPcZjtRQx';
GRANT ALL PRIVILEGES ON kodekloud_db9.* TO 'kodekloud_cap'@'%';


## Clicking on the *App button* on the top bar