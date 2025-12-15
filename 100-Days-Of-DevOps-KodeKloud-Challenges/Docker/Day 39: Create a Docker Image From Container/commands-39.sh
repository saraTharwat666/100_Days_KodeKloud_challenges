# 1. Connect to App Server 01
ssh tony@stapp01

# 2. Create an image blog:datacenter on Application Server 1 from a container ubuntu_latest
sudo docker commit ubuntu_latest blog:datacenter

# 3. Verify the image is created
docker images