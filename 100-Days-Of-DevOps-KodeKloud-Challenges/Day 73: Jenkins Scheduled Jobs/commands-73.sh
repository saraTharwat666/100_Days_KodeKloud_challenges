
1. Logged in to Jenkins using admin credentials.


2. Created a Freestyle Jenkins job named "copy-logs".


3. Configured the job to run periodically every 4 minutes using cron expression:
   */4 * * * *

   
4. Added an Execute Shell build step to copy Apache access_log and error_log
   from App Server 2 to /usr/src/security on Storage Server.

   
5. Used SSH and SCP for secure log transfer.


6. Verified logs were successfully copied and job executed successfully.
