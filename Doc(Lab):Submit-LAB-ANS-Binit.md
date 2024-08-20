### 1. Lab Scenario: Organizing Your Project Files
**ANS:**
1. To navigate to home directory
   ```bash
   cd 
   or
   cd ~
   ```
2. Create a directory named project
   ```bash
    mkdir project
   ```
3. Navigate into the project directory.
   ```bash
   cd project
### 2.Create Subdirectories:   
**ANS:**
1. Create two subdirectories named docs and src
```bash
mkdir -p project/{docs,src}
```
### 3. Create Files in docs Directory:  
**ANS:**
1.Navigate into the docs directory.
```bash
cd docs
```
2.Create an empty file named README.md
```bash
touch README.md
```
3. Create an empty file named LICENSE.
   ```bash
   touch LICENSE
   ```
4. List the files to confirm they are created
   ```bash
   ls 
   ```
### 4. Copy Files: 
**ANS:**
1.Copy README.md to the src directory.
```bash
cp README.md ../src
OR
cp README.md /home/cipher/project/src

```
2.Navigate to the src directory to confirm the file was copied and list the contents.
```bash
cd ../src
```
### 5. Move Files: 
**ANS:**
1.Rename README.md in the src directory to INTRO.md.
```bash
mv README.md INTRO.md
```
2. Confirm the file was renamed by listing the directory contents.
   ```bash
   ls
   ```
### 6. Remove Files:
**ANS:**
1.Remove the LICENSE file from the docs directory.
```bash
rm ../docs/LICENSE
```
2.Navigate to the docs directory and confirm the file was removed by listing the contents.
```bash
cd ../docs
ls
```   
### 7. Remove Directories:
**ANS:**
1.Navigate to the parent project directory.
```bash
cd ..
```
2.Remove the docs directory and its contents.
```bash
rmdir -rf docs
```
3.Confirm the directory was removed by listing the contents of the parent directory.
```bash
ls /home/cipher/project
```
### Lab Scenario: Navigating Your Project Directory Tree
**ANS:**
### 1.Create a Directory Tree:
**ANS:**
1. Navigate to your home directory
   ```bash
   cd /home
   ```
2.Create a directory named project.
```bash
mkdir project
```
3.Navigate into the project directory.
```bash
cd project
```
4. Within project, create two subdirectories named docs and src.
   ```bash
   mkdir docs src
   ```
5.Inside the docs directory, create another directory named guides.
```bash
mkdir docs/guides
```
6.Inside the src directory, create a directory named scripts.
```bash
mkdir src/scripts
```
### 2.Navigating the Directory Tree Using Relative Paths:
**ANS:**
1.From the project directory, navigate into the docs directory.
```bash
cd docs
```
2.From docs, navigate into the guides directory.
```bash
cd guides
```
3.From guides, navigate back to the docs directory.
```bash
cd ..
```
4.From docs, navigate up to the project directory.
```bash
cd ..
```
5.From project, navigate into the src directory.
```bash
cd src
```
6.From src, navigate into the scripts directory.
``` bash
cd scripts
```
### 3.Using Absolute Paths:
**ANS:**
1.Navigate to the guides directory using the absolute path from your home directory.
```bash
cd /home/cipher/project/docs/guides
```
2.Navigate to the scripts directory using the absolute path from your home directory.
```bash
cd /home/cipher/project/src/scripts
```
### 4. Using cd Shortcuts:
**ANS:**
1.From any directory, navigate to your home directory.
```bash
cd ~
cd 
```
2.From your home directory, navigate back to the last directory you were in.
```bash
cd -
```
3.From the scripts directory, navigate one level up to the src directory.
```bash
cd ..
```
4.While in the src directory, navigate to the current directory (no change).
```bash
cd .
```
5.From any directory, navigate to the root directory of the file system.
```bash
cd /
```
### Lab Scenario: Exploring Command Help and Shell Information
**ANS:**
### 1.Getting Command Help:
**ANS:**
1.How do you find out the options and usage of the ls command?
```bash
ls --help
```
2.How can you display a brief description of the cp command?
```bash
cp --help
```
3.How do you access the manual pages for the mv command to understand its usage?
```bash
man mv
```
4.How can you get a one-line description of the rm command?
```bash
whatis rm
```
### 2.Getting Information About the Current Shell:
**ANS:**
1.How do you display the current terminal device name?
```bash
who am i
```
2.How can you find out which shell you are currently using?
```bash
echo $SHELL
```
3.How do you display the username of the currently logged-in user?
```bash
whoami
```
### 3.Checking Running Processes:
**ANS:**
1.How do you list all currently running processes?
```bash
ps -ef
```
2.How can you display detailed information about a specific process?
```bash
top
```
3.How do you find the processes running by the current user?
```bash
ps -u $(whoami)
```
### 4.Extra Information:
**ANS:**
1.How do you display the current date and time?
```bash
date
```
2.How can you find out how long the system has been running?
```bash
uptime
```
3.How do you see a list of users currently logged into the system?
```bash
who
```
### Lab Scenario: User and Group Management
**ANS:**
### 1.User Information:
**ANS:**
1.How do you display detailed information about a specific user, including user ID, group ID, and home directory?
```bash
id
```
2.How can you list all users on the system?
```bash
cat /etc/passwd
```
### 2.Group Information:
**ANS:**
1.How do you display detailed information about a specific group?
```bash
getent group project  -----project is the group here..
```
2.How can you list all groups on the system?
```bash
getent group
```
### 3.User Creation:
**ANS:**
1.How do you create a new user named student1 with a home directory?
```bash
sudo useradd -m student1
```
2.How can you specify a different shell for the new user student1 during creation?
```bash
cat /etc/shells ----- checkk which shells are available
sudo useradd -m -s /bin/sh student1
```
### 4.Group Creation:
**ANS:**
1.How do you create a new group named students?
```bash
sudo groupadd students
```
### 5.Adding User to Group:
**ANS:**
1.How do you add the user student1 to the group students?
```bash
sudo usermod -G students student1
```
### 6.Group Modification:
**ANS:**
1.How do you change the group name from students to learners?
```bash
sudo groupmod -n learners students
```
2.How can you add a user to multiple groups?
```bash
sudo usermod -G group1,group2,group3 student1 ------syntax
sudo usermod -G learner student1 -----here student 1 is a user aaded to a group..learner is a group.
```
### 7.Password Policy Setting:
**ANS:**
1.How do you set a password for the user student1?
```bash
sudo passwd student1
```
2.How can you enforce password expiration for the user student1?
```bash
sudo chage -M 90 student1- password expires in 90 days
sudo chage -W 7 student1-this gives the password expiration notification before 7 days
```
### 8.Modifying User Shell:
**ANS:**
1.How do you change the login shell for the user student1 to /bin/bash?
```bash
sudo vi /etc/passwd
Insert and change the bin/sh to bin/bash then press :wq! to exit
to check if the shell is changed or not ...echo $SHELL
```
### 9.Modifying User Home Directory:
**ANS:**
1.How do you change the home directory of student1 to /home/newstudent1?
```bash
sudo usermod -d /home/newstudent1 -m student1
```
### 10.Removing User:
**ANS:**
1.How do you remove the user student1 from the system?
```bash
sudo userdel student1
```
### 11.Removing Group:
**ANS:**
1.How do you remove the group learners from the system?
```bash
sudo groupdel learners
to check if the group exists or not: getent group learners
```
### Lab Scenario: Special Permissions and Shared Folder Collaboration
**ANS:**
### 1.Create a Shared Directory:
**ANS:**
```bash
mkdir shared
```
sudo useradd alice
sudo useradd bob
sudo useradd carol
### 2.Set Group Ownership:
**ANS:**
1.Create a group collab and add users to it.
```bash
sudo groupadd collab
sudo usermod -G collab alice
sudo usermod -G collab bob
sudo usermod -G collab carol
 2.Change the group ownership of the shared directory.
```bash
sudo chown :collab /shared
```
### 3.Set Directory Permissions:
**ANS:**
1.Grant appropriate permissions to the group.
```bash
sudo chmod g+rwx /shared
to check ls -ld /shared
```
2.Set the setgid bit on the shared directory.
```bash
sudo chmod g+s /shared
ls -ld /shared
```
### 3.Set Directory Permissions:
**ANS:**
1.Grant appropriate permissions to the group.
```bash
sudo g+rwx /shared
ls -ld /shared
```
2.Set the setgid bit on the shared directory.
```bash
sudo chmod g+s /shared
ls -ld /shared
ls -ld /shared
```
### 4.Configure Umask for User Collaboration:
**ANS:**
1.Set the umask value for users to ensure files are created with appropriate default permissions.
```bash
umask 002
```
### 5.Set Sticky Bit on the Shared Directory:
**ANS:**
```bash
chmod +t shared-dir
```
### 6.Testing Permissions and Collaboration:
**ANS:**
### 1.Create Files:
```bash
touch files
```
2.Check File Ownership and Permissions.
```bash
ls -l files
```
3.Attempt to Delete Files:
```bash
rm files
```
### 7.Review and Summary:
**ANS:**
1.Verify that new files inherit the group ownership:
```bash

```
2.Ensure that the umask value is configured correctly for the desired default permissions:
```bash

```
3.Confirm that the sticky bit is functioning as expected by testing file deletion:
```bash

```
### Lab Scenario 1: Basic IP Configuration
**ANS:**
## 1.Assign a Static IP Address:
```bash
ip a
```
## 2.Verify the IP Configuration:
```bash
ip addr show
```
## 3.Restart Network Services:
```bash
sudo systemctl restart networking
```
## 4.Verify Connectivity:
```bash
ping 192.168.1.1
```
### Lab Scenario 2: Route Table Management
**ANS:**
## 1.Add a Static Route:
```bash
ip route add 10.0.0.0/24 via 192.168.1.1 dev enp0s8
```
## 2.Verify the Route Table:
```bash
ip route show
```
## 3.Test Connectivity:
```bash
ping 10.0.0.0/24
```
### Lab Scenario 3: Hostname Management
**ANS:**
## 1.Change the Hostname:
```bash
sudo hostnamectl set-hostname newname
```
## 2. Verify the Hostname:
```bash
hostname //show only hostname
hostnamectl //show current hostname settings
```
## 3. Update /etc/hosts:
```bash
/etc/hosts
cat /etc/hosts
```
### Lab Scenario 4: DNS Configuration Using resolvectl
## 1. Configure DNS Server:
```bash

resolvectl set-default-nameserver 8.8.8.8
```
## 2. Verify DNS Configuration:
```bash
@ -472,7 +472,7 @@ resolvectl status
```
## 3. Test DNS Resolution:
```bash

nslookup 8.8.8.8
```
### Lab Scenario 5: Network Interface Configuration Using ip Commands
## 1.Show Network Interfaces:
@ -491,6 +491,33 @@ ip addr show
```bash
ip link set dev eth0 up
```
### Lab Scenario 6: Network Configuration Using netplan
## 1.Edit Netplan Configuration:
```bash
nano /etc/netplan/50-cloud-init.yaml
# This file is generated from information provided by the datasource. Changes
# to it will not persist across an instance reboot. To disable cloud-init's
# network configuration capabilities, write a file
# /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg with the following:
# network: {config: disabled}
network:
    ethernets:
        enp1s0:
            dhcp4: true
    version: 2
```
## 2.Apply Netplan Configuration:
```bash
sudo netplan try --config-file /tmp/50-cloud-init.yaml
```
## 3.Verify Configuration:
```bash

```
## 4.Test Connectivity:
```bash

```




