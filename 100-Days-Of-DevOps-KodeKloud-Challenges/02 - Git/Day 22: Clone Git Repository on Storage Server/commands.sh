ssh natasha@ststor01 # Connect to the Storage Server

git --version # Check if git is installed

sudo mkdir -p /usr/src/kodekloudrepos # Create the target directory if it doesn't exist

cd /usr/src/kodekloudrepos
git clone /opt/news.git

cd news/
ls -las
# total 12
# 4 drwxr-xr-x 3 natasha natasha 4096 Sep 15 20:58 .
# 4 drwxr-xr-x 3 natasha natasha 4096 Sep 15 20:58 ..
# 4 drwxr-xr-x 7 natasha natasha 4096 Sep 15 20:58 .git
