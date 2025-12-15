# connect to server 2
sudo ssh steve@stapp02

#  Pull nginx:alpine-perl docker image on Application Server 2 && Create a container named games using the image you pulled.
docker run -d --name games -p 8083:80 nginx:alpine-perl
