# connect to Server 3
sudo ssh banner@stapp03

# Create a docker network named as official on App Server 3 in Stratos DC.

docker network create \
  --driver macvlan \
  --subnet=192.168.0.0/24 \
  --ip-range=192.168.0.0/24 \
  -o parent=eth0 \
  official
