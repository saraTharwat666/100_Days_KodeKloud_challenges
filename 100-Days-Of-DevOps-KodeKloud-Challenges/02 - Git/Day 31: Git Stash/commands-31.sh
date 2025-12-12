# 1. Connect to the Storage Server and go to the repository directory
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/blog/

# 2. List the stashes and apply stash@{1}
sudo git stash list
sudo git stash pop stash@{1}

# 3. Stage, commit, and push the changes to the remote repository
sudo git add .
sudo git commit -m "Restored changes from stash@{1}"
sudo git push origin master
