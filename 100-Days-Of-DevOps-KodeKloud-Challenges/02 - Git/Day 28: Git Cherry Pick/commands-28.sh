# 1. Connect to the Storage Server and go to the repository directory
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/apps

# 2. Find the Commit to Cherry-Pick
sudo git log feature

# 3. Cherry-Pick the Commit to Master
sudo git checkout master
sudo git cherry-pick <commit-hash>

# 4. Push the Changes to the Remote Repository
sudo git push origin master
