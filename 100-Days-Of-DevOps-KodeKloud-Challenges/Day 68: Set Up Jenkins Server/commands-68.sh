# connect to jenkins server 
ssh root@jenkins  #password is S3curePass

# install Jenkins 
sudo yum install -y wget
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# install Java 
sudo yum install -y java-17-openjdk

# Start the services 
systemctl start jenkins
systemctl enable jenkins

# to apply the changes 
systemctl status jenkins

# to get security default for jenkins 
cat /var/lib/jenkins/secrets/initialAdminPassword

# and create the user by information he given in task 










