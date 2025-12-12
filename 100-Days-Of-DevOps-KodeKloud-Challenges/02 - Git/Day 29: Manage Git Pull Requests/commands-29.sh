# 1. Connect to the Storage Server and go to the repository directory
ssh max@ststor01
cd story-blog/

# 2. Check the branches and the commit history
git branch -a
git log --oneline --all --graph --decorate


## --- Follow the steps for Gitea ---
## Login to Gitea with max, add Tom as reviewer to the PR
## Login as tom, merge the PR


## --- Back to Storage Server ---
# 3. Verify the PR is merged in Gitea, then pull the changes to the local repo
git checkout master
git pull origin master
git log --oneline --graph --decorate