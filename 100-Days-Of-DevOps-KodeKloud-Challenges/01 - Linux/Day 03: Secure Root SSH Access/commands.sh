## 1. Connect to the 3 App Servers: stapp01, stapp02, stapp03
ssh tony@stapp01

# 2. Edit the SSH configuration file to disable root login (set PermitRootLogin to no)
sudo vi /etc/ssh/sshd_config

# 3. Restart the SSH service to apply changes
sudo systemctl restart sshd