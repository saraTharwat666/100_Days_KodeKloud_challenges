
# 1️⃣ Pre-requisites (One Time Setup)
# On Storage Server (as root)
ssh root@ststor01
chown -R sarah:sarah /var/www/html


# This is required so Jenkins can deploy files without using sudo.
2️⃣ Jenkins Job Configuration
# Job Type
# Name: nautilus-app-deployment
# Type: Freestyle Project
# Source Code Management
# Git
# Repository URL:
# http://git.stratos.xfusioncorp.com/sarah/web.git
# Branch:
# */master


# Credentials: ssh-sarah-id


# Build Triggers
# ☑ Poll SCM
Schedule:
* * * * *



# 3️⃣ Build Step – Execute Shell (Deployment Script)

#!/bin/bash
cd /var/www/html
git reset --hard origin/master
git pull origin master

# 4️⃣ Verification
# Login to Gitea

# Edit index.html
# Commit & push to master
# Jenkins job triggers automatically

# Open App URL
# Page should show:
# Welcome to the xFusionCorp Industries

