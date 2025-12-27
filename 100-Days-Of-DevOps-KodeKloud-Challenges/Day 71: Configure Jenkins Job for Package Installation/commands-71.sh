
# Jenkins Job: install-packages

1. Login to Jenkins UI (Username: admin, Password: Adm!n321)


2. Create a new Freestyle project:
   -Name: install-packages

   
3. Enable "This project is parameterized":
   - Add String Parameter:
     - Name: PACKAGE
     - Description: Name of the package to install

     
4. Add build step "Execute shell":
   - Command: ssh root@storage-server.stratos "yum install -y $PACKAGE"

   
5. Install required plugins if necessary, restart Jenkins

6. Save the job

7. Run job with different PACKAGE values to ensure it works reliably

8. Capture screenshots or record screen for documentation
