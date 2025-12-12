# 1. Connect to the Storage Server and go to the repository directory
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/blog/

# 2. Switch to the feature branch and rebase it onto master
sudo git checkout feature
sudo git rebase master

# 3. Push the rebased feature branch to the remote repository, forcing the update
sudo git push origin feature --force
