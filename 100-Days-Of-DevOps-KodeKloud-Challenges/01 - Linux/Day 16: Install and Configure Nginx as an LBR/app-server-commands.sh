## Check in the 3 App Servers: stapp01, stapp02, stapp03

ssh tony@stapp01
sudo systemctl status httpd

sudo iptables -L -n
# Chain INPUT (policy ACCEPT)
# target     prot opt source               destination
#
# Chain FORWARD (policy ACCEPT)
# target     prot opt source               destination
# DOCKER-USER  all  --  0.0.0.0/0            0.0.0.0/0
# DOCKER-ISOLATION-STAGE-1  all  --  0.0.0.0/0            0.0.0.0/0
# ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0            ctstate RELATED,ESTABLISHED
# DOCKER     all  --  0.0.0.0/0            0.0.0.0/0
# ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0
# ACCEPT     all  --  0.0.0.0/0            0.0.0.0/0
#
# Chain OUTPUT (policy ACCEPT)
# target     prot opt source               destination
#
# Chain DOCKER (1 references)
# target     prot opt source               destination
#
# Chain DOCKER-ISOLATION-STAGE-1 (1 references)
# target     prot opt source               destination
# DOCKER-ISOLATION-STAGE-2  all  --  0.0.0.0/0            0.0.0.0/0
# RETURN     all  --  0.0.0.0/0            0.0.0.0/0
#
# Chain DOCKER-ISOLATION-STAGE-2 (1 references)
# target     prot opt source               destination
# DROP       all  --  0.0.0.0/0            0.0.0.0/0
# RETURN     all  --  0.0.0.0/0            0.0.0.0/0
#
# Chain DOCKER-USER (1 references)
# target     prot opt source               destination
# RETURN     all  --  0.0.0.0/0            0.0.0.0/0
# """

sudo grep -r "Listen" /etc/httpd/conf /etc/httpd/conf.d # Check the port where Apache is listening
# /etc/httpd/conf/httpd.conf:# Listen: Allows you to bind Apache to specific IP addresses and/or
# /etc/httpd/conf/httpd.conf:# Change this to Listen on a specific IP address, but note that if
# /etc/httpd/conf/httpd.conf:#Listen 12.34.56.78:80
# /etc/httpd/conf/httpd.conf:Listen 3001

