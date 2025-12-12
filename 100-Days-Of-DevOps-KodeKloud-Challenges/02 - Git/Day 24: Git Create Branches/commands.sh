# 1. Connect to the Storage server in Stratos DC.
ssh natasha@ststor01

# 2. Navigate to the /usr/src/kodekloudrepos/games directory.
cd /usr/src/kodekloudrepos/games

# 3. Create a new branch xfusioncorp_games from the master branch.
# If you get a "detected dubious ownership in repository" error, run the following command
git config --global --add safe.directory /usr/src/kodekloudrepos/games

git branch

sudo git checkout master

sudo git branch xfusioncorp_games

git branch
#   kodekloud_games
# * master
#   xfusioncorp_games