# 1. Connect to App Server 01
ssh tony@stapp01

# 2. Install Docker CE, its Dependencies (add repo, install packages), and Docker Compose Plugin
sudo yum update -y
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo yum install -y docker-compose-plugin

# 3. Start and Enable Docker Service
sudo systemctl start docker
sudo systemctl enable docker

# 4. Verify the installation and service status
sudo systemctl status docker
docker version
docker compose version


