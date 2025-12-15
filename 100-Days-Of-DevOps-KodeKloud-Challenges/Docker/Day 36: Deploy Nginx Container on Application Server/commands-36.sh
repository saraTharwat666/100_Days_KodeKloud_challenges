# 1. Connect to App Server 01
ssh tony@stapp01

# 2. Create a container named nginx_1 using the nginx image with the alpine tag
sudo docker run -d --name nginx_1 nginx:alpine

# 3. Verify the container is in a running state
sudo docker ps
