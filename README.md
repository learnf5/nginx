#  Intention of this repository

This repository is intended to be the source of truth for:
-  NGINX Fundamentals Self-Directed Training
-  NGINX Fundamentals Instructor Led Training

# System Environment Expectations

This set of labs has been built on:
- OS:    Ubuntu 22.04.1 LTS (Jammy Jellyfish)
- RAM:   4GB Metered
- Disk:  25GB

Additions to the system for the purposes of the labs:
- `tree` command
- `vim` and `vim-common`
 - nginx versions: `nginx/1.21.6` (`nginx-plus-r27`)

Networking Configuration:
- IP Address:   `10.0.0.1`
- Subnet Mask:  `/24`

Username/Password:
- `student`/`student`
- `root`/use `sudo -i passwd` to reset

# Recommended Setup Steps for ILT Course

1.  Use the Skytap Template supplied from the NGINX Fundamentals Developer Team
2.  Boot the system and open the **Terminal** application
3.  You'll be running the `ngx-fund-ilt-setup.sh` script from the LearnF5/NGINX repo and following the instructions from there.
4.  Execute the following command in the **Terminal** application to elevate yourself to the `root` user.
    
    ```
    sudo -i
    ```
5.  Copy and paste the following URL into the root user **Terminal** application and press **ENTER**

    ```
    bash <(curl -s https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)
    ```

6.  Follow the on-screen instructions to move through the 5 **Setup Steps**, pressing **RETURN** if prompted.

7.  Inspect the results block at the end of the script to see if all 5 of the Steps are  displaying a green `OK - Step Verified` message
8.  You can additionally verify the presence of the necessary lab configuration using the command:

    ```
    ls -l /data /home/ubuntu /home/student/Desktop/Double-Click-2-Run-Labs /home/student/NGINX-Fundamentals-Labs/ /home/student/Desktop/Lab_Files
    ```

8.  The system is now ready to be used for testing or it can be replicated for use in ILT courses.