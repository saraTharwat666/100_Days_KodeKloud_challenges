# 1. Connect to App Server 01
ssh tony@stapp01

# 2. Diagnose the issue:
# 2.1. Check Apache service status
sudo systemctl status httpd

# 2.2. Check Port Status to see if Apache is listening on port 3004
sudo netstat -tulpn | grep 3004
# tcp        0      0 127.0.0.1:3004          0.0.0.0:*               LISTEN      431/sendmail: accep

# 3. Fix the issue:
# 3.1. Stop the sendmail service that is using port 3004
sudo systemctl stop sendmail

# 3.2. Restart Apache service and check its status
sudo systemctl start httpd
sudo systemctl status httpd

# 3.3. Verify that Apache is now listening on port 3004
sudo netstat -tlnp | grep :3004
# tcp        0      0 0.0.0.0:3004            0.0.0.0:*               LISTEN      1061/httpd

# 3.4. Review the firewall rules to ensure port 3004 is allowed
sudo iptables -L -n --line-numbers
"""
Chain INPUT (policy ACCEPT)
num  target     prot opt source               destination
1    ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0            state RELATED,ESTABLISHED
2    ACCEPT     icmp --  0.0.0.0/0            0.0.0.0/0
3    ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0
4    ACCEPT     tcp  --  0.0.0.0/0            0.0.0.0/0            state NEW tcp dpt:22
5    REJECT     all  --  0.0.0.0/0            0.0.0.0/0            reject-with icmp-host-prohibited
"""

# 3.5. Add a rule to allow incoming traffic on port 3004
sudo iptables -I INPUT 5 -p tcp --dport 3004 -j ACCEPT
sudo iptables -L -n --line-numbers



## --- From the Jump Host ---
curl http://stapp01:3004