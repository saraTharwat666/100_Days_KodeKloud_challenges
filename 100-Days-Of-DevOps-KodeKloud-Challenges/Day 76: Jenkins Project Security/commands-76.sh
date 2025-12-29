# Login to Jenkins 
1. Login to Jenkins
Username: admin
Password: Adm!n321


# install plagins named : 
Matrix Authorization Strategy

# click on existing Job then click on configure 

3. Enable Project-based Authorization

Go to Authorization
Select Project-based Matrix Authorization Strategy
Under Inheritance Strategy:
✅ Inherit permissions from parent ACL


4. Configure Permissions for sam

Add user: sam

Grant:

Job → Read

Job → Build

Job → Configure



5. Configure Permissions for rohan

Add user: rohan

Grant:

Job → Read

Job → Build

Job → Cancel

Job → Configure

Job → Update

Job → Tag



6. Save Configuration

Click Save





