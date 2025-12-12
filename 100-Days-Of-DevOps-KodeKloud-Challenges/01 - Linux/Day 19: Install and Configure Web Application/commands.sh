## From the Jump Host

ls

# Copy the files to the App server
scp -r /home/thor/news tony@stapp01:/tmp/
scp -r /home/thor/demo tony@stapp01:/tmp/


## Connect to the App Server 1: stapp01

ssh tony@stapp01

sudo yum install httpd -y

sudo vi /etc/httpd/conf/httpd.conf # Change the Listen port to 8085

ls /tmp # Check if the files were copied

# Move the files to the web server directory
sudo mv /tmp/news /var/www/html/
sudo mv /tmp/demo /var/www/html/

# Start and enable httpd service after ensuring the Apache would have content to serve
sudo systemctl start httpd
sudo systemctl enable httpd

# Check if the web apps are working
curl http://localhost:8085/news/
curl http://localhost:8085/demo/
