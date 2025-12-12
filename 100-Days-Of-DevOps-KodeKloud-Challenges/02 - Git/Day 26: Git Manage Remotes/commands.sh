# 1. Connect to the Storage Server and go to the repository directory
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/beta

# 2. Add the new remote named dev_beta and point it to the specified repository
sudo git remote add dev_beta /opt/xfusioncorp_beta.git

# 3. Copy, Commit, and Push
sudo cp /tmp/index.html .
sudo git add index.html
sudo git commit -m "Added index.html to master branch"

# 4. Push the master branch to the new remote origin
sudo git push dev_beta master