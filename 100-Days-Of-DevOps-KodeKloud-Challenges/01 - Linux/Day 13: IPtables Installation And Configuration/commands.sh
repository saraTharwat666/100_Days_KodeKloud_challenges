ssh tony@stapp01

sudo yum install iptables-services -y

# Configure **iptables** Rules
# Get the LBP IP from the documentation

sudo iptables -A INPUT -p tcp -s 172.16.238.14 --dport 6300 -j ACCEPT # Allow LBP traffic

sudo iptables -A INPUT -p tcp --dport 6300 -j REJECT # Reject all other traffic

sudo service iptables save # This saves the rules to /etc/sysconfig/iptables

sudo systemctl enable iptables
sudo systemctl start iptables

sudo iptables -L -n -v # Check the iptables rules


## Repeat the process for App Server 2 & 3
ssh steve@stapp02
ssh banner@stapp03