# 1. Connect to the Storage Server and go to the Bare Repository
ssh natasha@ststor01
cd /opt/games.git/hooks/

# 2. Create the post-update hook script
vi post-update
chmod +x post-update

# 3. Go the the repository directory, merge the feature branch into master, and push the changes
cd /usr/src/kodekloudrepos/games/
git checkout master
git merge feature
git push

# 4. Verify the tag creation
git fetch --tags
# From /opt/games
#  * [new tag]         release-2025-09-25 -> release-2025-09-25
