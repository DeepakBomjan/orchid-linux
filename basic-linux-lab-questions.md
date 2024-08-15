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
   
Sure! Here’s the lab scenario without the solutions:

### **Lab Scenario: Special Permissions and Shared Folder Collaboration**

#### **Objective:**
To understand and configure special permissions on a shared folder, and manage user permissions effectively using `umask` and the sticky bit.

#### **Setup:**
1. **Create a Shared Directory:**
   - **Folder:** `/shared`
   - **Description:** This directory will be used by multiple users for collaboration.

2. **Create Users:**
   - **User1:** `alice`
   - **User2:** `bob`
   - **User3:** `carol`
   - **Description:** These users will collaborate on files in the shared directory.

#### **Steps:**

1. **Create the Shared Directory.**

2. **Set Group Ownership:**
   - Create a group `collab` and add users to it.
   - Change the group ownership of the shared directory.

3. **Set Directory Permissions:**
   - Grant appropriate permissions to the group.
   - Set the **setgid** bit on the shared directory.

4. **Configure Umask for User Collaboration:**
   - Set the `umask` value for users to ensure files are created with appropriate default permissions.

5. **Set Sticky Bit on the Shared Directory:**

6. **Testing Permissions and Collaboration:**
   - **Create Files:**
     - Log in as `alice` and create a file in `/shared`.
     - Log in as `bob` and create another file in `/shared`.

   - **Check File Ownership and Permissions.**

   - **Attempt to Delete Files:**
     - As `alice`, attempt to delete `bob_file.txt`.
     - As `bob`, attempt to delete `alice_file.txt`.

7. **Review and Summary:**
   - Verify that new files inherit the group ownership.
   - Ensure that the `umask` value is configured correctly for the desired default permissions.
   - Confirm that the sticky bit is functioning as expected by testing file deletion.

Here are several lab scenarios focusing on IP configuration, route tables, hostname management, and network services using various tools and configuration methods:

### **Lab Scenario 1: Basic IP Configuration**

#### **Objective:**
Configure a static IP address on a Linux machine and verify the configuration.

#### **Setup:**
- **Machine:** `Server1`
- **IP Address:** `192.168.1.10`
- **Netmask:** `255.255.255.0`
- **Gateway:** `192.168.1.1`

#### **Steps:**
1. **Assign a Static IP Address:**
   - Use `ip` commands to configure the IP address.

2. **Verify the IP Configuration:**
   - Check the assigned IP address using `ip addr show`.

3. **Restart Network Services:**
   - Restart the network service to apply changes.

4. **Verify Connectivity:**
   - Ping the gateway and another host on the same network.

---

### **Lab Scenario 2: Route Table Management**

#### **Objective:**
Configure and verify static routes on a Linux machine.

#### **Setup:**
- **Network 1:** `192.168.1.0/24` (Local Network)
- **Network 2:** `10.0.0.0/24` (Remote Network)
- **Gateway:** `192.168.1.1` (Gateway to `10.0.0.0/24`)

#### **Steps:**
1. **Add a Static Route:**
   - Use `ip route add` to create a route to `10.0.0.0/24`.

2. **Verify the Route Table:**
   - Use `ip route show` to check the current route table.

3. **Test Connectivity:**
   - Ping an address in the `10.0.0.0/24` network to verify the route.

---

### **Lab Scenario 3: Hostname Management**

#### **Objective:**
Change and verify the system hostname.

#### **Setup:**
- **New Hostname:** `Server-XYZ`

#### **Steps:**
1. **Change the Hostname:**
   - Use `hostnamectl` to set the new hostname.

2. **Verify the Hostname:**
   - Check the current hostname using `hostname` and `hostnamectl`.

3. **Update `/etc/hosts`:**
   - Ensure the new hostname is correctly reflected in the `/etc/hosts` file.

---

### **Lab Scenario 4: DNS Configuration Using `resolvectl`**

#### **Objective:**
Configure DNS settings and verify DNS resolution.

#### **Setup:**
- **DNS Server:** `8.8.8.8`

#### **Steps:**
1. **Configure DNS Server:**
   - Use `resolvectl` to set the DNS server.

2. **Verify DNS Configuration:**
   - Check the DNS configuration using `resolvectl status`.

3. **Test DNS Resolution:**
   - Use `dig` or `nslookup` to resolve a domain name.

---

### **Lab Scenario 5: Network Interface Configuration Using `ip` Commands**

#### **Objective:**
Configure and verify network interfaces using `ip` commands.

#### **Setup:**
- **Interface:** `eth0`
- **IP Address:** `192.168.1.20`
- **Netmask:** `255.255.255.0`

#### **Steps:**
1. **Show Network Interfaces:**
   - Use `ip link show` to list all network interfaces.

2. **Assign IP Address:**
   - Use `ip addr add` to assign an IP address to `eth0`.

3. **Verify IP Configuration:**
   - Use `ip addr show` to check the assigned IP address.

4. **Bring Interface Up:**
   - Use `ip link set` to bring the interface up.

---

### **Lab Scenario 6: Network Configuration Using `netplan`**

#### **Objective:**
Configure network settings using `netplan`.

#### **Setup:**
- **Interface:** `eth0`
- **Static IP Address:** `192.168.1.30`
- **Netmask:** `255.255.255.0`
- **Gateway:** `192.168.1.1`
- **DNS Server:** `8.8.8.8`

#### **Steps:**
1. **Edit Netplan Configuration:**
   - Modify the netplan configuration file (usually located in `/etc/netplan/`).

2. **Apply Netplan Configuration:**
   - Use `netplan apply` to apply the new network configuration.

3. **Verify Configuration:**
   - Check the network settings using `ip addr show` and `ip route show`.

4. **Test Connectivity:**
   - Ping the gateway and a public DNS server to ensure proper configuration.

---

These scenarios should cover a range of tasks related to IP configuration, route management, hostname changes, and network configuration using different tools and methods.

Certainly! Here are the lab scenarios without the answers:

### **Lab Scenario 1: Checking Network Statistics**

#### **Objective:**
Monitor and analyze network connections and statistics.

#### **Setup:**
- **Tool to Use:** `ss` and `netstat`

#### **Steps:**

1. **Check TCP and UDP Ports Using `ss`:**
   - List all TCP and UDP sockets.
   - Display detailed information for each connection.

2. **Check TCP and UDP Ports Using `netstat`:**
   - List all listening ports.
   - Display detailed information, including the process name.

3. **Verify Specific Ports:**
   - Check for a specific port (e.g., port 80) using `ss` or `netstat`.

---

### **Lab Scenario 2: Checking System Resource Usage**

#### **Objective:**
Monitor system resource usage and performance metrics.

#### **Setup:**
- **Tools to Use:** `htop`, `top`, `sar`, `iostat`, `ps`

#### **Steps:**

1. **Monitor System Resources Using `htop`:**
   - Open `htop` to view real-time system resource usage.

2. **Monitor System Resources Using `top`:**
   - Open `top` to view real-time system resource usage.

3. **Monitor System Performance Using `sar`:**
   - Display CPU usage statistics.
   - Display I/O statistics.

4. **Monitor Disk I/O Using `iostat`:**
   - Display disk I/O statistics.

5. **Check Running Processes Using `ps`:**
   - Display a list of all processes.
   - Display processes sorted by memory or CPU usage.

---

### **Lab Scenario 3: Combined Resource Monitoring**

#### **Objective:**
Perform a comprehensive check on network and system resource usage.

#### **Steps:**

1. **Check Network Connections:**
   - List all active TCP and UDP connections.

2. **Monitor System Resources:**
   - Open `htop` or `top` to view real-time CPU and memory usage.

3. **Review Historical Performance Data:**
   - Use `sar` to analyze past CPU and I/O performance.

4. **Analyze Disk I/O:**
   - Use `iostat` to monitor disk performance.

5. **Review Running Processes:**
   - Use `ps` to check resource usage by individual processes.

