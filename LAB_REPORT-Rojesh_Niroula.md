
---

### Lab Scenario: Organizing Your Project Files

**1. Navigating to the Home Directory**
   - **Command:**
     ```bash
     cd ~
     ```

**2. Creating a Directory**
   - **Task:** Create a directory named `project`.
   - **Command:**
     ```bash
     mkdir project
     ```

**3. Navigating into the Project Directory**
   - **Command:**
     ```bash
     cd project
     ```

### Creating Subdirectories

**1. Create Subdirectories `docs` and `src`**
   - **Command:**
     ```bash
     mkdir docs src
     ```

### Creating Files in the `docs` Directory

**1. Navigating to the `docs` Directory**
   - **Command:**
     ```bash
     cd docs
     ```

**2. Creating an Empty File Named `README.md`**
   - **Command:**
     ```bash
     touch README.md
     ```

**3. Creating an Empty File Named `LICENSE`**
   - **Command:**
     ```bash
     touch LICENSE
     ```

**4. Listing Files to Confirm Creation**
   - **Command:**
     ```bash
     ls -l
     ```

### Copying Files

**1. Copy `README.md` to the `src` Directory**
   - **Command:**
     ```bash
     cp README.md ../src/
     ```

**2. Navigate to the `src` Directory and Confirm the File Copy**
   - **Command:**
     ```bash
     cd ../src
     ls
     ```

### Moving Files

**1. Rename `README.md` to `INTRO.md` in the `src` Directory**
   - **Command:**
     ```bash
     mv README.md INTRO.md
     ```

**2. Confirm the File was Renamed**
   - **Command:**
     ```bash
     ls
     ```

### Removing Files

**1. Remove the `LICENSE` File from the `docs` Directory**

---

### Lab Scenario: Organizing Your Project Files

**1. Navigating to the Home Directory**
   - **Command:**
     ```bash
     cd ~
     ```

**2. Creating a Directory**
   - **Task:** Create a directory named `project`.
   - **Command:**
     ```bash
     mkdir project
     ```

**3. Navigating into the Project Directory**
   - **Command:**
     ```bash
     cd project
     ```

### Creating Subdirectories

**1. Create Subdirectories `docs` and `src`**
   - **Command:**
     ```bash
     mkdir docs src
     ```

### Creating Files in the `docs` Directory

**1. Navigating to the `docs` Directory**
   - **Command:**
     ```bash
     cd docs
     ```

**2. Creating an Empty File Named `README.md`**
   - **Command:**
     ```bash
     touch README.md
     ```

**3. Creating an Empty File Named `LICENSE`**
   - **Command:**
     ```bash
     touch LICENSE
     ```

**4. Listing Files to Confirm Creation**
   - **Command:**
     ```bash
     ls -l
     ```

### Copying Files

**1. Copy `README.md` to the `src` Directory**
   - **Command:**
     ```bash
     cp README.md ../src/
     ```

**2. Navigate to the `src` Directory and Confirm the File Copy**
   - **Command:**
     ```bash
     cd ../src
     ls
     ```

### Moving Files

**1. Rename `README.md` to `INTRO.md` in the `src` Directory**
   - **Command:**
     ```bash
     mv README.md INTRO.md
     ```

**2. Confirm the File was Renamed**
   - **Command:**
     ```bash
     ls
     ```

### Removing Files

**1. Remove the `LICENSE` File from the `docs` Directory**
   - **Command:**
     ```bash
     rm ../docs/LICENSE
     ```

**2. Confirm the File was Removed**
   - **Command:**
     ```bash
     cd ../docs
     ls
     ```

### Removing Directories

**1. Navigate to the Parent `project` Directory**
   - **Command:**
     ```bash
     cd ..
     ```

**2. Remove the `docs` Directory and Its Contents**
   - **Command:**
     ```bash
     rm -r docs
     ```

**3. Confirm the Directory was Removed**
   - **Command:**
     ```bash
     ls
     ```

### Lab Scenario: Navigating Your Project Directory Tree

**1. Creating a Directory Tree**

**1. Navigate to Your Home Directory**
   - **Command:**
     ```bash
     cd ~
     ```

**2. Create a Directory Named `project`**
   - **Command:**
     ```bash
     mkdir project
     ```

**3. Navigate into the `project` Directory**
   - **Command:**
     ```bash
     cd project
     ```

**4. Create Subdirectories `docs` and `src`**
   - **Command:**
     ```bash
     mkdir docs src
     ```

**5. Inside the `docs` Directory, Create a `guides` Subdirectory**
   - **Command:**
     ```bash
     mkdir docs/guides
     ```

**6. Inside the `src` Directory, Create a `scripts` Subdirectory**
   - **Command:**
     ```bash
     mkdir src/scripts
     ```

### Navigating the Directory Tree Using Relative Paths

**1. From the `project` Directory, Navigate into the `docs` Directory**
   - **Command:**
     ```bash
     cd docs
     ```

**2. From `docs`, Navigate into the `guides` Directory**
   - **Command:**
     ```bash
     cd guides
     ```

**3. From `guides`, Navigate Back to the `docs` Directory**
   - **Command:**
     ```bash
     cd ..
     ```

**4. From `docs`, Navigate Up to the `project` Directory**
   - **Command:**
     ```bash
     cd ..
     ```

**5. From `project`, Navigate into the `src` Directory**
   - **Command:**
     ```bash
     cd src
     ```

**6. From `src`, Navigate into the `scripts` Directory**
   - **Command:**
     ```bash
     cd scripts
     ```

### Using Absolute Paths

**1. Navigate to the `guides` Directory Using the Absolute Path**
   - **Command:**
     ```bash
     cd ~/project/docs/guides
     ```

**2. Navigate to the `scripts` Directory Using the Absolute Path**
   - **Command:**
     ```bash
     cd ~/project/src/scripts
     ```

### Using `cd` Shortcuts

**1. Navigate to Your Home Directory**
   - **Command:**
     ```bash
     cd ~
     ```

**2. Navigate Back to the Last Directory You Were In**
   - **Command:**
     ```bash
     cd -
     ```

**3. From the `scripts` Directory, Navigate One Level Up to the `src` Directory**
   - **Command:**
     ```bash
     cd ..
     ```

**4. Navigate to the Current Directory (No Change)**
   - **Command:**
     ```bash
     cd .
     ```

**5. Navigate to the Root Directory of the File System**
   - **Command:**
     ```bash
     cd /
     ```

### Lab Scenario: Exploring Command Help and Shell Information

**1. Getting Command Help**

**1. Find Out the Options and Usage of the `ls` Command**
   - **Command:**
     ```bash
     ls --help
     ```

**2. Display a Brief Description of the `cp` Command**
   - **Command:**
     ```bash
     cp --help
     ```

**3. Access the Manual Pages for the `mv` Command**
   - **Command:**
     ```bash
     man mv
     ```

**4. Get a One-Line Description of the `rm` Command**
   - **Command:**
     ```bash
     whatis rm
     ```

**2. Getting Information About the Current Shell**

**1. Display the Current Terminal Device Name**
   - **Command:**
     ```bash
     who am i
     ```

**2. Find Out Which Shell You Are Currently Using**
   - **Command:**
     ```bash
     echo $SHELL
     ```

**3. Display the Username of the Currently Logged-In User**
   - **Command:**
     ```bash
     whoami
     ```

### Checking Running Processes

**1. List All Currently Running Processes**
   - **Command:**
     ```bash
     ps -ef
     ```

**2. Display Detailed Information About a Specific Process**
   - **Command:**
     ```bash
     top
     ```

**3. Find the Processes Running by the Current User**
   - **Command:**
     ```bash
     ps -u $(whoami)
     ```

### Extra Information

**1. Display the Current Date and Time**
   - **Command:**
     ```bash
     date
     ```

**2. Find Out How Long the System Has Been Running**
   - **Command:**
     ```bash
     uptime
     ```

**3. See a List of Users Currently Logged Into the System**
   - **Command:**
     ```bash
     who
     ```

### Lab Scenario: User and Group Management

**1. User Information**

**1. Display Detailed Information About a Specific User**
   - **Command:**
     ```bash
     id
     ```

**2. List All Users on the System**
   - **Command:**
     ```bash
     cat /etc/passwd
     ```

**2. Group Information**

**1. Display Detailed Information About a Specific Group**
   - **Command:**
     ```bash
     getent group project
     ```

**2. List All Groups on the System**
   - **Command:**
     ```bash
     getent group
     ```

**3. User Creation**

**1. Create a New User Named `student1` with a Home Directory**
   - **Command:**
     ```bash
     sudo useradd -m student1
     ```

**2. Specify a Different Shell for the New User `student1` During Creation**
   - **Command:**
     ```bash
     sudo useradd -m -s /bin/sh student1
     ```

**4. Group Creation**

**1. Create a New Group Named `students`**
   - **Command:**
     ```bash
     sudo groupadd students
     ```

**5. Adding a User to a Group**

**1. Add the User `student1` to the Group `students`**
   - **Command:**
     ```bash
     sudo usermod -aG students student1
     ```

**6. Group Modification**

**1. Change the Group Name from `students` to `learners`**
   - **Command:**
     ```bash
     sudo groupmod -n learners students
     ```
It seems that the response was cut off. Let me continue where it left off.

---

**2. Add a User to Multiple Groups**
   - **Command:**
     ```bash
     sudo usermod -aG group1,group2,group3 student1
     ```

### 7. Password Policy Setting

**1. Set a Password for the User `student1`**
   - **Command:**
     ```bash
     sudo passwd student1
     ```

**2. Enforce Password Expiration for the User `student1`**
   - **Command:**
     ```bash
     sudo chage -M 90 student1  # Password expires in 90 days
     sudo chage -W 7 student1   # Warns 7 days before expiration
     ```

### 8. Modifying User Shell

**1. Change the Login Shell for the User `student1` to `/bin/bash`**
   - **Command:**
     ```bash
     sudo usermod -s /bin/bash student1
     ```

### 9. Modifying User Home Directory

**1. Change the Home Directory of `student1` to `/home/newstudent1`**
   - **Command:**
     ```bash
     sudo usermod -d /home/newstudent1 -m student1
     ```

### 10. Removing a User

**1. Remove the User `student1` from the System**
   - **Command:**
     ```bash
     sudo userdel student1
     ```

### 11. Removing a Group

**1. Remove the Group `learners` from the System**
   - **Command:**
     ```bash
     sudo groupdel learners
     ```

### Lab Scenario: Special Permissions and Shared Folder Collaboration

**1. Create a Shared Directory**

**1. Create the `shared` Directory**
   - **Command:**
     ```bash
     mkdir /shared
     ```

**2. Create Users `alice`, `bob`, and `carol`**
   - **Command:**
     ```bash
     sudo useradd alice
     sudo useradd bob
     sudo useradd carol
     ```

### 2. Set Group Ownership

**1. Create a Group `collab` and Add Users to It**
   - **Command:**
     ```bash
     sudo groupadd collab
     sudo usermod -aG collab alice
     sudo usermod -aG collab bob
     sudo usermod -aG collab carol
     ```

**2. Change the Group Ownership of the `shared` Directory**
   - **Command:**
     ```bash
     sudo chown :collab /shared
     ```

### 3. Set Directory Permissions

**1. Grant Appropriate Permissions to the Group**
   - **Command:**
     ```bash
     sudo chmod g+rwx /shared
     ls -ld /shared
     ```

**2. Set the Setgid Bit on the `shared` Directory**
   - **Command:**
     ```bash
     sudo chmod g+s /shared
     ls -ld /shared
     ```

### 4. Configure Umask for User Collaboration

**1. Set the Umask Value for Users to Ensure Files are Created with Appropriate Default Permissions**
   - **Command:**
     ```bash
     # Add the following to /etc/profile or ~/.bashrc
     umask 002
     ```

### 5. Set the Sticky Bit on the Shared Directory

**1. Set the Sticky Bit on the `shared` Directory**
   - **Command:**
     ```bash
     sudo chmod +t /shared
     ```

### 6. Testing Permissions and Collaboration

**1. Create Files in the `shared` Directory**
   - **Command:**
     ```bash
     touch /shared/testfile
     ```

**2. Check File Ownership and Permissions**
   - **Command:**
     ```bash
     ls -l /shared/testfile
     ```

**3. Attempt to Delete Files (by Different Users)**
   - **Command:**
     ```bash
     rm /shared/testfile
     ```

### 7. Review and Summary

**1. Summarize the Results of the Permissions Testing**
   - **Explanation:** 
     - The `setgid` bit ensures files created in the directory inherit the group ownership of the directory.
     - The sticky bit prevents users from deleting files they do not own, even if they have write permissions to the directory.
   - **Command:** No specific command; this is a summary.

---

### Lab Scenario 1: Basic IP Configuration

**1. User Information**

**1. Display the IP Address of the System**
   - **Command:**
     ```bash
     ip a
     ```

---
Thank you
