# connect to server 2
sudo ssh steve@stapp02
# Create a docker-compose file at /opt/docker/
touch /opt/docker/docker-compose.yml ; vi docker-compose.yml 

# The Content of docker-compose file 
version: "3.8"
services:
  web:
    image: httpd:latest
    container_name: httpd
    ports:
      - "3003:80"
    volumes:
      - /opt/security:/usr/local/apache2/htdocs

# to run the container
docker compose -f /opt/docker/docker-compose.yml up -d

