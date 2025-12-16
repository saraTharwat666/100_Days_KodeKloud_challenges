# 1. Connect to App Server 01
ssh tony@stapp01

# 2. Copy the file from the host to the Docker container
sudo docker cp /tmp/nautilus.txt.gpg ubuntu_latest:/usr/src/