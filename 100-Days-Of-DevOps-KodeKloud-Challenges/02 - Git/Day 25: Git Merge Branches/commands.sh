# 1. Connect to the storage server in Stratos DC
ssh natasha@ststor01

# 2. Navigate to the cluster repo
cd /usr/src/kodekloudrepos/cluster

# 3. Ensure you are on the master branch
sudo git checkout master

# If you get a "detected dubious ownership in repository" error, run the following command
git config --global --add safe.directory /usr/src/kodekloudrepos/cluster

# 4. Create and switch to a new branch named datacenter
sudo git checkout -b datacenter

# 5. Copy the index.html file from /tmp to the current directory, stage & commit it
sudo cp /tmp/index.html .
sudo git add index.html
sudo git commit -m "Added index.html to datacenter branch"

# 6. Switch back to the master branch, merge the datacenter branch into master, and push both branches to the remote repo
sudo git checkout master
sudo git merge datacenter
sudo git push origin master
sudo git push origin datacenter