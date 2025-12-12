# 1. Connect to App Server 02
ssh steve@stapp02

# 2. Install Java Development Kit (JDK) and Tomcat
sudo yum install java-1.8.0-openjdk-devel tomcat -y

# 3. Configure Tomcat to use port 8082 instead of the default 8080
sudo vi /etc/tomcat/server.xml
# <Connector port="8082" protocol="HTTP/1.1"
#            connectionTimeout="20000"
#            redirectPort="8443" />



## --- From the JumpHost, deploy the ROOT.war file ---
scp /tmp/ROOT.war steve@stapp02:/tmp/



## --- Back from App Server 02 ---

# 4. Move the ROOT.war file to the Tomcat webapps directory
sudo mv /tmp/ROOT.war /var/lib/tomcat/webapps/

# Start and enable the Tomcat service
sudo systemctl start tomcat
sudo systemctl enable tomcat



## --- From the JumpHost ---
# Verify the webpage works (should return HTML content)
curl http://stapp02:8082