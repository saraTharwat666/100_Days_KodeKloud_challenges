# 1. Connect to the Storage Server and go to the repository directory
ssh natasha@ststor01
cd /usr/src/kodekloudrepos/media/

# 2. Revert the last commit
sudo git revert HEAD
# [master 3528c31] Revert "add data.txt file"
#  1 file changed, 1 insertion(+)
#  create mode 100644 info.txt

# 3. Ammend the commit message
sudo git commit --amend -m "revert media"

# 4. Verify the commit
sudo git log --oneline -1
#e3219a5 (HEAD -> master) revert media


## **NOTE:** If the "revert media" message it's applied directly during the revert step, KodeKloud Checker doesn't validate as correct.