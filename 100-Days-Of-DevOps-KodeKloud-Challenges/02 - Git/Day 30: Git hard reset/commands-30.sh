# 1. Connect to the Storage Server and go to the repository directory
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/official/

# 2. Check the commit history
sudo git log --oneline
# 5d6ed97 add data.txt file
# 7651ba9 initial commit

# 3. Reset the Repository, and Verify the history
sudo git reset --hard 5d6ed97
sudo git log --oneline

# 4. Force Push the Changes
sudo git push --force
