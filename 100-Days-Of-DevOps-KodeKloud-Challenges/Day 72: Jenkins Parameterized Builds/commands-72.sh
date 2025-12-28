
1. Logged in to Jenkins using admin credentials.


2. Created a Freestyle job named "parameterized-job".


3. Enabled "This project is parameterized".


4. Added a String parameter:
   - Name: Stage
   - Default Value: Build

   
5. Added a Choice parameter:
   - Name: env
   - Choices: Development, Staging, Production

   
6. Configured Execute Shell build step to echo parameter values.


7. Built the job using "Build with Parameters" with env set to Staging.


8. Verified successful build from console output.
