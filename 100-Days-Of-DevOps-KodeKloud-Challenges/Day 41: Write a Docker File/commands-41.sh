#connect to app server 1
sudo ssh tony@stapp01
#  create a docker file /opt/docker/Dockerfile
touch /opt/docker/Dockerfile
vi /opt/docker/Dockerfile

# this is a content of Docker file to install apache 

# FROM ubuntu:24.04

# RUN apt-get update && \
#     apt-get install -y apache2 && \
#     sed -i 's/Listen 80/Listen 5001/' /etc/apache2/ports.conf

# EXPOSE 5001

# CMD ["apachectl", "-D", "FOREGROUND"]
