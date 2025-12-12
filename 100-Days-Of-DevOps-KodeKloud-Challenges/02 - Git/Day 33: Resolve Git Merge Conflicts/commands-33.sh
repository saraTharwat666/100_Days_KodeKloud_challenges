# 1. Connect to the Storage Server and go to the repository directory
ssh max@ststor01
cd story-blog/

# 2. Pull the latest changes from the remote repository
sudo git pull origin master

# 3. Open the file with merge conflicts and resolve them
sudo vi story-index.txt

# 4. Stage the resolved file, commit the changes, and push to the remote repository
sudo git add story-index.txt
sudo git commit -m "Resolved merge conflict"
sudo git push origin master