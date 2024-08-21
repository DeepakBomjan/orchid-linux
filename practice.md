25-Question Model Set

Navigate to the Home Directory:

Change to the /home/student directory and list all files.
```
cd /home/student
ls
```
List Hidden Files:

Display all hidden files in the /home/student directory.
```
la /home/student
or
ls /home/student -a
```
Print Current Directory:

Show the current directory path in the filesystem hierarchy.
```
pwd
```
Find User UID:

Identify and print the UID of the currently logged-in user.
```
id -u
```
Add New Users:

Add users alice, bob, carol, and dave to the system.
```
useradd [username]

```
Set User Passwords:

Assign a password for each of the newly created users.
```
sudo passwd [username]
```
Create User Groups:

Create two groups: developers and managers.
```
groupadd [groupname]
```
Assign Users to Groups:

Add alice and bob to the developers group, and carol and dave to the managers group.
```
sudo usermod -aG [usergroup] [username]
sudo usermod -aG developers alice
```
Create Directory Structure:

Create the following directory structure inside /opt:
/opt/company/
├── projects/
└── reports/
```
mkdir -p opt/company/{projects,reports}
```
Add Files to Directory:

Create a text file named report.txt inside /opt/company/reports/ and add the content "Quarterly Report Q1".
```
cat > /opt/company/reports/report.txt
Quarterly Report Q1
ctrl z
```
Change Ownership of Directory:

Set the ownership of the company directory to carol(managers) and the group ownership to managers.
```
sudo chown carol company
sudo chown [owner] [dir]
sudo chgrp manager company
sudo chgrp [owner] [dir]
```
Modify File Permissions:

Set read and write permissions for the reports directory to the managers group.
```
sudo chmod g+rw reports
```
Remove Other Permissions:

Remove all permissions for others on the projects directory and its contents.
```
sudo chmod o-rwx projects
```
Print IP Address and Hostname:

Display the current IP address, hostname, and routing table of the system.
```
ip a
hostname
ip route show
```
Change Hostname:

Update the hostname to corporate-server.
```
sudo hostnamectl set-hostname corporative-server
```
Check Internet Connectivity:

Test and confirm internet connectivity from your machine.
```
ping 8.8.8.8
```
Check SSH Service Status:

Verify if the ssh service is running on the system.
```
sudo systemctl status ssh
```

Print Filesystem Usage:

Show the filesystem usage statistics for the current system.
```
df -a
```
List All Users with a Login Shell:

Print a list of all users on the system who have a valid login shell.
```
$ who
```
Add Content to File:

Add the following content to the file data.txt in the home directory:
2024-08-18: Status Update
```
cat > data.txt
2024-08-18: Status Update
```
Task Completed: User Management and File Permissions

Find Lines Matching a Pattern:

Search and print lines containing the word "Update" from the data.txt file.

```
cat data.txt | grep Update
```
Initialize a Git Repository:

Initialize a Git repository in /opt/company/projects/.
```
cd /opt/company/projects/
git init
```
Add and Commit a README File:
  
```
touch README
git add README
git commit -m "Commited"
```
Create a New Git Branch:

Create a new branch named featureX001 in the Git repository.
```
git checkout -b featureX001
```
Save Command History:

Save your command history to a file named student_history.txt in your home directory.
```

```
