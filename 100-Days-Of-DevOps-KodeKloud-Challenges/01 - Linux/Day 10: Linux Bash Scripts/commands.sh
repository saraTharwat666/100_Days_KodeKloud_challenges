# 1. Connect to App Server 01
ssh tony@stapp01

# 2. Install zip utility
sudo yum install zip -y

# 3. Generate a new SSH key pair
ssh-keygen -t rsa

# 4. Copy the SSH public key to the remote backup server
ssh-copy-id clint@stbkp01

# 5. Create the scripts directory if it doesn't exist
sudo mkdir -p /scripts/

# 6. Create the official backup script
sudo vi /scripts/official_backup.sh

# 7. Make the backup script executable and run it
sudo chmod +x /scripts/official_backup.sh
sudo /scripts/official_backup.sh



## --- From a new terminal window ---

# 1. Connect to the Backup Server
ssh clint@stbkp01

# 2. List the backup file to verify its existence and run it
ls -l /backup/xfusioncorp_official.zip
sudo /scripts/official_backup.sh