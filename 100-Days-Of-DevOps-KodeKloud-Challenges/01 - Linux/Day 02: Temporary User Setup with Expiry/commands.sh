# 1. Connect to App Server 02
ssh steve@stapp02

# 2. Add user 'yousuf' with expiry date set to 2024-04-15
sudo useradd -e 2024-04-15 yousuf

# 3. Verify the expiry date for user 'yousuf'
sudo chage -l yousuf
