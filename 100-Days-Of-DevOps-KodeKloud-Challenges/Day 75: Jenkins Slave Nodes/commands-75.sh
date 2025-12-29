
# Steps to Add App Servers as Jenkins Nodes

# Generate SSH Key on Jenkins server

ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""


# Copy Public Key to each App Server

ssh-copy-id -i ~/.ssh/id_rsa.pub tony@stapp01
ssh-copy-id -i ~/.ssh/id_rsa.pub steve@stapp02
ssh-copy-id -i ~/.ssh/id_rsa.pub banner@stapp03


# Create Remote root directory on each App Server

ssh tony@stapp01 "mkdir -p /home/tony/jenkins && chmod 755 /home/tony/jenkins"
ssh steve@stapp02 "mkdir -p /home/steve/jenkins && chmod 755 /home/steve/jenkins"
ssh banner@stapp03 "mkdir -p /home/banner/jenkins && chmod 755 /home/banner/jenkins"


# Add Credentials in Jenkins

# Type: SSH Username with Private Key

# Username: App Server user

# Private Key: ~/.ssh/id_rsa

# Scope: Global

# Add Nodes in Jenkins

# Name: App_server_1 / App_server_2 / App_server_3

# Remote root directory: as created above

# Launch method: Launch agents via SSH

# Credentials: the SSH Key

# Labels: stapp01 / stapp02 / stapp03

# Verify Nodes are Online

# Manage Jenkins → Nodes → Launch agent

# Should turn 🟢

# Test job: Execute shell → hostname → output should match server name
