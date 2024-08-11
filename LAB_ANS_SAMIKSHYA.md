Lab1 Scenario: Directory and File Management
1. Create a New Directory:
- Navigate to your home directory
ans:cd ~
- Create a directory named project
mkdir project
- Navigate into the project directory
and:cd project

2. Create Subdirectories:
- Create two subdirectories named docs and src
ans:mkdir docs src

3. Create Files in docs Directory:
- Navigate into the docs directory
ans:cd docs
- Create an empty file named README.md
ans:touch README.md
- Create an empty file named LICENSE
ans:touch LICENSE
- List the files to confirm they are created
ans:ls

4. Copy Files:
- Copy README.md to the src directory
ans:cp README.md ../src/
- Navigate to the src directory to confirm the file was copied and list the contents
ans:cd ../src
    ls

5. Move (Rename) Files:
- Rename README.md in the src directory to INTRO.md
ans:mv README.md INTRO.md
- Confirm the file was renamed by listing the directory contents
ans:ls

6. Remove Files:
- Remove the LICENSE file from the docs directory
ans:rm ../docs/LICENSE
- Navigate to the docs directory and confirm the file was removed by listing the contents
ans:cd ../docs
ls

7. Remove Directories:
- Navigate to the parent project directory
ans:cd ..
- Remove the docs directory and its contents
ans:rm -r docs
- Confirm the directory was removed by listing the contents of the parent directory
ans:ls


Lab Scenario: Navigating Your Project Directory Tree
1. Create a Directory Tree:
- Navigate to your home directory
ans:cd ~
- Create a directory named project
ans:mkdir project
- Navigate into the project directory
ans:cd project
- Create subdirectories named docs and src
ans:mkdir docs src
- Inside docs, create another directory named guides
  ans:mkdir docs/guides
- Inside src, create a directory named scripts
ans:mkdir src/scripts

2. Navigating the Directory Tree Using Relative Paths:
- From the project directory, navigate into the docs directory
ans:cd docs
- From docs, navigate into the guides directory
ans:cd guides
- From guides, navigate back to the docs directory
ans:cd ..
- From docs, navigate up to the project directory
ans:cd ..
- From project, navigate into the src directory
ans:cd src
- From src, navigate into the scripts directory
  ans:cd scripts

3. Using Absolute Paths:
- Navigate to the guides directory using the absolute path from your home directory
ans:cd ~/project/docs/guides
- Navigate to the scripts directory using the absolute path from your home directory
ans:cd ~/project/src/scripts

4. Using cd Shortcuts:
- From any directory, navigate to your home directory
ans:cd ~
- From your home directory, navigate back to the last directory you were in
ans:cd -
- From the scripts directory, navigate one level up to the src directory
ans:cd ..
- While in the src directory, navigate to the current directory (no change)
ans:cd .
- From any directory, navigate to the root directory of the file system
ans:cd /


Lab Scenario: Command Help and Shell Information
1. Getting Command Help:
- Find out the options and usage of the ls command
ans:ls --help
- Display a brief description of the cp command
ans:whatis cp
- Access the manual pages for the mv command to understand its usage
ans:man mv
- Get a one-line description of the rm command
ans:whatis rm

2. Getting Information About the Current Shell:
- Display the current terminal device name
ans:tty
- Find out which shell you are currently using
ans:echo $SHELL
- Display the username of the currently logged-in user
ans:whoami

3. Checking Running Processes:
- List all currently running processes
ans:ps aux
- Display detailed information about a specific process (e.g., PID 1234)
ans:ps -p 1234 -f
- Find the processes running by the current user
ans:ps -u $(whoami)

4. Extra Information:
- Display the current date and time
ans:date
- Find out how long the system has been running
uptime
- See a list of users currently logged into the system
ans:who


Lab Scenario: User and Group Management
1. User Information:
- Display detailed information about a specific user (e.g., user1)
ans:id user1
- List all users on the system
ans:cat /etc/passwd

2. Group Information:
- Display detailed information about a specific group (e.g., group1)
ans:getent group group1
- List all groups on the system
ans:cat /etc/group

3. User Creation:
- Create a new user named student1 with a home directory
ans:sudo useradd -m student1
- Specify a different shell for the new user student1 during creation
ans:sudo useradd -m -s /bin/bash student1

4. Group Creation:
- Create a new group named students
ans:sudo groupadd students

5. Adding User to Group:
- Add the user student1 to the group students
ans:sudo usermod -aG students student1

6. Group Modification:
- Change the group name from students to learners
ans:sudo groupmod -n learners students
- Add a user to multiple groups 
ans:sudo usermod -aG group1,group2 student1

7. Password Policy Setting:
- Set a password for the user student1
ans:sudo passwd student1
- Enforce password expiration for the user student1
ans:sudo chage -M 30 student1

8. Modifying User Shell:
- Change the login shell for the user student1 to /bin/bash
ans:sudo usermod -s /bin/bash student1

9. Modifying User Home Directory:
- Change the home directory of student1 to /home/newstudent1
ans:sudo usermod -d /home/newstudent1 -m student1

10. Removing User:
- Remove the user student1 from the system
ans:sudo userdel -r student1

11. Removing Group:
- Remove the group learners from the system
ans:sudo groupdel learners


Lab5 Scenario: Special Permissions and Shared Folder Collaboration
1. Create the Shared Directory:
- Create a directory named /shared
ans:sudo mkdir /shared

2. Set Group Ownership:
- Create a group named collab
ans:sudo groupadd collab
- Add users to the collab group
ans:sudo usermod -aG collab alice
   sudo usermod -aG collab bob
   sudo usermod -aG collab carol
- Change the group ownership of the shared directory
ans:sudo chown :collab /shared

3. Set Directory Permissions:
- Grant appropriate permissions to the group
ans:sudo chmod 770 /shared
- Set the setgid bit on the shared directory
ans:sudo chmod g+s /shared

4. Configure Umask for User Collaboration:
- Set the umask value for users to ensure files are created with appropriate default permissions
ans:umask 002

5. Set Sticky Bit on the Shared Directory:
- Set the sticky bit on the shared directory
ans:sudo chmod +t /shared

6. Testing Permissions and Collaboration:
- Log in as alice and create a file in /shared
ans:su - alice
   touch /shared/alice_file.txt
- Log in as bob and create another file in /shared
ans:su - bob
    touch /shared/bob_file.txt
- Check the ownership and permissions of files in /shared
ans:ls -l /shared
- As alice, attempt to delete bob_file.txt
ans:su - alice
    rm /shared/bob_file.txt
- As bob, attempt to delete alice_file.txt
ans:su - bob
  rm /shared/alice_file.txt

7. Review and Summary:
-Verify that new files inherit the group ownership.
ans:ls -l /shared
-Ensure that the umask value is configured correctly for the desired default permissions.
ans:umask
-Confirm that the sticky bit is functioning as expected by testing file deletion.
ans:ls -l /shared
