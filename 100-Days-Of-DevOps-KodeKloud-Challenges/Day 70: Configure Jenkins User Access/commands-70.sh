
# Jenkins User & Permission Setup

1. Login to Jenkins UI as admin (Username: admin, Password: Adm!n321)

2. Create new user:
   - Username: jim
   - Password: 8FmzjvFU6S
   - Full Name: Jim
   
3. Configure Project-based Matrix Authorization:
   - jim: Overall Read
   - Anonymous: Remove all permissions
   - admin: Overall Administer
   
4. Configure job-level permissions for existing jobs:
   - jim: Read only
   
5. Restart Jenkins if prompted after plugins installation

6. Verify:
   - jim can view jobs only
   - admin retains full control
   - Anonymous has no permissions
