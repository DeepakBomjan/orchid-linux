## Basic Linux
### Lab Scenario: Organizing Your Project Files

1. **Create a New Directory:**
   - Navigate to your home directory.
   - Create a directory named `project`.
   - Navigate into the `project` directory.

2. **Create Subdirectories:**
   - Create two subdirectories named `docs` and `src`.

3. **Create Files in `docs` Directory:**
   - Navigate into the `docs` directory.
   - Create an empty file named `README.md`.
   - Create an empty file named `LICENSE`.
   - List the files to confirm they are created.

4. **Copy Files:**
   - Copy `README.md` to the `src` directory.
   - Navigate to the `src` directory to confirm the file was copied and list the contents.

5. **Move Files:**
   - Rename `README.md` in the `src` directory to `INTRO.md`.
   - Confirm the file was renamed by listing the directory contents.

6. **Remove Files:**
   - Remove the `LICENSE` file from the `docs` directory.
   - Navigate to the `docs` directory and confirm the file was removed by listing the contents.

7. **Remove Directories:**
   - Navigate to the parent `project` directory.
   - Remove the `docs` directory and its contents.
   - Confirm the directory was removed by listing the contents of the parent directory.

These lab questions guide students through creating directories, adding files, and using `cp`, `mv`, and `rm` commands in a structured exercise.

### Lab Scenario: Navigating Your Project Directory Tree

1. **Create a Directory Tree:**
   - Navigate to your home directory.
   - Create a directory named `project`.
   - Navigate into the `project` directory.
   - Within `project`, create two subdirectories named `docs` and `src`.
   - Inside the `docs` directory, create another directory named `guides`.
   - Inside the `src` directory, create a directory named `scripts`.

2. **Navigating the Directory Tree Using Relative Paths:**
   - From the `project` directory, navigate into the `docs` directory.
   - From `docs`, navigate into the `guides` directory.
   - From `guides`, navigate back to the `docs` directory.
   - From `docs`, navigate up to the `project` directory.
   - From `project`, navigate into the `src` directory.
   - From `src`, navigate into the `scripts` directory.

3. **Using Absolute Paths:**
   - Navigate to the `guides` directory using the absolute path from your home directory.
   - Navigate to the `scripts` directory using the absolute path from your home directory.

4. **Using `cd` Shortcuts:**
   - From any directory, navigate to your home directory.
   - From your home directory, navigate back to the last directory you were in.
   - From the `scripts` directory, navigate one level up to the `src` directory.
   - While in the `src` directory, navigate to the current directory (no change).
   - From any directory, navigate to the root directory of the file system.

These questions will guide students through creating a directory tree and practicing navigation using relative and absolute paths, along with `cd` shortcuts like `cd .`, `cd ..`, `cd -`, and `cd ~`.

Sure! Here are the lab questions focusing on getting command help, obtaining information about the current shell, and checking processes:

### Lab Scenario: Exploring Command Help and Shell Information

1. **Getting Command Help:**
   - How do you find out the options and usage of the `ls` command?
   - How can you display a brief description of the `cp` command?
   - How do you access the manual pages for the `mv` command to understand its usage?
   - How can you get a one-line description of the `rm` command?

2. **Getting Information About the Current Shell:**
   - How do you display the current terminal device name?
   - How can you find out which shell you are currently using?
   - How do you display the username of the currently logged-in user?

3. **Checking Running Processes:**
   - How do you list all currently running processes?
   - How can you display detailed information about a specific process?
   - How do you find the processes running by the current user?

4. **Extra Information:**
   - How do you display the current date and time?
   - How can you find out how long the system has been running?
   - How do you see a list of users currently logged into the system?

These lab questions guide students through using help commands, getting information about their current shell environment, and checking running processes.

Sure! Here are the lab questions focusing on user and group information, user and group creation, modification, password policy setting, and other user management tasks:

### Lab Scenario: User and Group Management

1. **User Information:**
   - How do you display detailed information about a specific user, including user ID, group ID, and home directory?
   - How can you list all users on the system?

2. **Group Information:**
   - How do you display detailed information about a specific group?
   - How can you list all groups on the system?

3. **User Creation:**
   - How do you create a new user named `student1` with a home directory?
   - How can you specify a different shell for the new user `student1` during creation?

4. **Group Creation:**
   - How do you create a new group named `students`?

5. **Adding User to Group:**
   - How do you add the user `student1` to the group `students`?

6. **Group Modification:**
   - How do you change the group name from `students` to `learners`?
   - How can you add a user to multiple groups?

7. **Password Policy Setting:**
   - How do you set a password for the user `student1`?
   - How can you enforce password expiration for the user `student1`?

8. **Modifying User Shell:**
   - How do you change the login shell for the user `student1` to `/bin/bash`?

9. **Modifying User Home Directory:**
   - How do you change the home directory of `student1` to `/home/newstudent1`?

10. **Removing User:**
    - How do you remove the user `student1` from the system?

11. **Removing Group:**
    - How do you remove the group `learners` from the system?
