ssh tony@stapp01

sudo systemctl status httpd

sudo journalctl -xeu httpd.service # Alternative way to see logs

sudo netstat -tulpn | grep 8084 # Check the listening ports
# tcp        0      0 127.0.0.1:8084          0.0.0.0:*               LISTEN      683/sendmail: accep

sudo systemctl stop sendmail

sudo netstat -tulpn | grep 8084 # Verify the port is free

sudo systemctl start httpd
sudo systemctl status httpd