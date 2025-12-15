# connect on server 1
sudo ssh tony@stapp01

# create docker-compose file under /opt/finance/docker-compose.yml
cd /opt/finance/ ; touch docker-compose.yml

# the content of docker compose file :
version: "3.8"

services:
  web:
    image: php:apache
    container_name: php_apache
    ports:
      - "8087:80"
    volumes:
      - /var/www/html:/var/www/html

  db:
    image: mariadb:latest
    container_name: mysql_apache
    ports:
      - "3306:3306"
    volumes:
      - /var/lib/mysql:/var/lib/mysql
    environment:
      MYSQL_DATABASE: database_apache
      MYSQL_USER: app_user
      MYSQL_PASSWORD: ComplexPass123!



# to run docker-compose file 
docker compose -f /opt/finance/docker-compose.yml up -d

