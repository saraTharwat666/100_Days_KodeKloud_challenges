# 1️⃣ New Item
# Name: database-backup
# Type: Freestyle project

# 2️⃣ Build Triggers
# ✔️ Build periodically
# */10 * * * *


#3️⃣ Build → Execute shell 
DATE=$(date +%F)
DUMP_FILE="db_${DATE}.sql"

DB_NAME="kodekloud_db01"
DB_USER="kodekloud_roy"
DB_PASS="asdfgdsd"

DB_HOST="stdb01"
DB_SSH_USER="peter"
DB_SSH_PASS="Sp!dy"

BKP_HOST="stbkp01"
BKP_USER="clint"
BKP_PASS="H@wk3y3"
BKP_PATH="/home/clint/db_backups"

# Step 1: Take DB dump on DB server
sshpass -p "$DB_SSH_PASS" ssh -o StrictHostKeyChecking=no ${DB_SSH_USER}@${DB_HOST} "
mysqldump -u${DB_USER} -p${DB_PASS} ${DB_NAME} > /tmp/${DUMP_FILE}
"

# Step 2: Copy dump to Backup Server
sshpass -p "$DB_SSH_PASS" ssh -o StrictHostKeyChecking=no ${DB_SSH_USER}@${DB_HOST} "
sshpass -p '$BKP_PASS' scp -o StrictHostKeyChecking=no /tmp/${DUMP_FILE} ${BKP_USER}@${BKP_HOST}:${BKP_PATH}/
"
