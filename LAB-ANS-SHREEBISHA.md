1. Lab Scenario: Organizing Your Project Files
ANS:
To navigate to home directory
cd or cd ~
Create a directory named project
 mkdir project
Navigate into the project directory.
cd project
2.Create Subdirectories:
ANS:

Create two subdirectories named docs and src
sudo mkdir docs
mkdir src
 OR mkdir -p project/docs project/src
3. Create Files in docs Directory:
ANS: 1.Navigate into the docs directory.

cd docs
2.Create an empty file named README.md

touch README.md
Create an empty file named LICENSE.
touch LICENSE
List the files to confirm they are created
ls -l
4. Copy Files:
ANS: 1.Copy README.md to the src directory.

cp project/docs/README.md project/src/
2.Navigate to the src directory to confirm the file was copied and list the contents.

cd src
ls
5. Move Files:
ANS: 1.Rename README.md in the src directory to INTRO.md.

mv README.md INTRO.md
Confirm the file was renamed by listing the directory contents.
ls
6. Remove Files:
ANS: 1.Remove the LICENSE file from the docs directory.

rm docs/LICENSE
2.Navigate to the docs directory and confirm the file was removed by listing the contents.

cd docs
ls
7. Remove Directories:
ANS: 1.Navigate to the parent project directory.

cd project
2.Remove the docs directory and its contents.

rm -r docs
3.Confirm the directory was removed by listing the contents of the parent directory.

ls
Lab Scenario: Navigating Your Project Directory Tree
ANS:

1.Create a Directory Tree:
ANS:

Navigate to your home directory
cd home
2.Create a directory named project.

mkdir project
3.Navigate into the project directory.

cd project
Within project, create two subdirectories named docs and src.
mkdir -p project/docs project/src
5.Inside the docs directory, create another directory named guides.

mkdir project/docs/guides or cd project/docs  mkdir guides
6.Inside the src directory, create a directory named scripts.

mkdir project/src/scripts
2.Navigating the Directory Tree Using Relative Paths:
ANS: 1.From the project directory, navigate into the docs directory.

cd project/docs
2.From docs, navigate into the guides directory.

cd docs/guides
3.From guides, navigate back to the docs directory.

cd . or cd docs
4.From docs, navigate up to the project directory.

cd project
5.From project, navigate into the src directory.

cd src
6.From src, navigate into the scripts directory.

cd src
cd scripts
3.Using Absolute Paths:
ANS: 1.Navigate to the guides directory using the absolute path from your home directory.

cd project/docs/guides
2.Navigate to the scripts directory using the absolute path from your home directory.

cd project/src/scripts
4. Using cd Shortcuts:
ANS: 1.From any directory, navigate to your home directory.

cd ~
2.From your home directory, navigate back to the last directory you were in.

cd -
3.From the scripts directory, navigate one level up to the src directory.

cd ..
4.While in the src directory, navigate to the current directory (no change).

cd .
5.From any directory, navigate to the root directory of the file system.

cd /
Lab Scenario: Exploring Command Help and Shell Information
ANS:

1.Getting Command Help:
ANS: 1.How do you find out the options and usage of the ls command?

ls --help
2.How can you display a brief description of the cp command?

cp --help
3.How do you access the manual pages for the mv command to understand its usage?

man mv
4.How can you get a one-line description of the rm command?

whatis rm
2.Getting Information About the Current Shell:
ANS: 1.How do you display the current terminal device name?

who am i
2.How can you find out which shell you are currently using?

echo $SHELL
3.How do you display the username of the currently logged-in user?

whoami
3.Checking Running Processes:
ANS: 1.How do you list all currently running processes?

ps -ef
2.How can you display detailed information about a specific process?

top
3.How do you find the processes running by the current user?

ps -u $(whoami)
4.Extra Information:
ANS: 1.How do you display the current date and time?

date
2.How can you find out how long the system has been running?

uptime
3.How do you see a list of users currently logged into the system?

who
Lab Scenario: User and Group Management
ANS:

1.User Information:
ANS: 1.How do you display detailed information about a specific user, including user ID, group ID, and home directory?

id
2.How can you list all users on the system?

cat /etc/passwd
2.Group Information:
ANS: 1.How do you display detailed information about a specific group?

getent group project  -----project is the group here..
2.How can you list all groups on the system?

getent group
3.User Creation:
ANS: 1.How do you create a new user named student1 with a home directory?

sudo useradd -m student1
2.How can you specify a different shell for the new user student1 during creation?

cat /etc/shells ----- checkk which shells are available
sudo useradd -m -s /bin/sh student1
4.Group Creation:
ANS: 1.How do you create a new group named students?

sudo groupadd students
5.Adding User to Group:
ANS: 1.How do you add the user student1 to the group students?

sudo usermod -G students student1
6.Group Modification:
ANS: 1.How do you change the group name from students to learners?

sudo groupmod -n learners students
2.How can you add a user to multiple groups?

sudo usermod -G group1,group2,group3 student1 ------syntax
sudo usermod -G learner student1 -----here student 1 is a user aaded to a group..learner is a group.
7.Password Policy Setting:
ANS: 1.How do you set a password for the user student1?

sudo passwd student1
2.How can you enforce password expiration for the user student1?

sudo chage -M 90 student1- password expires in 90 days
sudo chage -W 7 student1-this gives the password expiration notification before 7 days
8.Modifying User Shell:
ANS: 1.How do you change the login shell for the user student1 to /bin/bash?

sudo vi /etc/passwd
Insert and change the bin/sh to bin/bash then press :wq! to exit
to check if the shell is changed or not ...echo $SHELL
9.Modifying User Shell:
ANS: 1.How do you change the home directory of student1 to /home/newstudent1?

sudo usermod -d /home/newstudent1 -m student1
10.Removing User:
ANS: 1.How do you remove the user student1 from the system?

sudo userdel student1
11.Removing Group:
ANS: 1.How do you remove the group learners from the system?

sudo groupdel learners
to check if the group exists or not: getent group learners
Lab Scenario: Special Permissions and Shared Folder Collaboration
ANS:

1.Create a Shared Directory:
ANS:

mkdir shared
sudo useradd alice sudo useradd bob sudo useradd carol

2.Set Group Ownership:
ANS: 1.Create a group collab and add users to it.

sudo groupadd collab
sudo usermod -G collab alice
sudo usermod -G collab bob
sudo usermod -G collab carol
 2.Change the group ownership of the shared directory.
```bash
sudo chown :collab /shared
3.Set Directory Permissions:
ANS: 1.Grant appropriate permissions to the group.

sudo chmod g+rwx /shared
to check ls -ld /shared
2.Set the setgid bit on the shared directory.

sudo chmod g+s /shared
ls -ld /shared
3.Set Directory Permissions:
ANS: 1.Grant appropriate permissions to the group.

sudo g+rwx /shared
ls -ld /shared
2.Set the setgid bit on the shared directory.

sudo chmod g+s /shared
ls -ld /shared
ls -ld /shared
4.Configure Umask for User Collaboration:
ANS: 1.Set the umask value for users to ensure files are created with appropriate default permissions.

umask u+rwx 
5.Set Sticky Bit on the Shared Directory:
ANS:

6.Testing Permissions and Collaboration:
ANS:

1.Create Files:
2.Check File Ownership and Permissions.

3.Attempt to Delete Files:

7.Review and Summary:
ANS:

Lab Scenario 1: Basic IP Configuration
ANS:

1.User Information:
ANS:
