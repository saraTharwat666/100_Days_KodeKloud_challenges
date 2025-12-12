# 1. Connect to App Server 02
ssh steve@stapp02

# 2. Add user 'anita' with non-interactive shell (/sbin/nologin)
sudo useradd -s /sbin/nologin anita

# 3. Verify that 'anita' was added successfully
grep anita /etc/passwd

# Expected output:
# anita:x:1001:1001::/home/anita:/sbin/nologinssh steve@stapp02


