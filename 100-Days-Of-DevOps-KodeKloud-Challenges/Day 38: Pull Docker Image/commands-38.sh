# 1. Connect to App Server 02
ssh steve@stapp02

# 2. Pull busybox:musl image and re-tag it as busybox:local
sudo docker pull busybox:musl
sudo docker tag busybox:musl busybox:local

# 3. Verify the image is pulled and re-tagged
sudo docker images