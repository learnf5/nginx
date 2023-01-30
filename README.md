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
- `root`/use `sudo -i` passwd to reset

# Recommended Setup Steps for ILT Course

1.  Take the Skytap Template supplied from the NGINX Fundamentals Developer
2.  Boot the system and open the **Terminal** app
3.  Execute the `sudo -i` command to move up to the `root` user environment
4.  Go to the NGINX repo to get the `ngx-fund-ilt-setup.sh` script and follow the instructions from there.
5.  OR, after executing `sudo -i` copy and paste the following URL into the root user Terminal session and press ENTER

    ```
    $ bash <(curl -s https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)
    ```

6.  Follow the on-screen instructions to move through the 5 steps if prompted, otherwise use the results block at the end of the script to see if all 5 of the Steps are each displaying a green `OK - Step Verified` message
7.  You can additionally verify the presence of the configuration using the command:

    ```
    $ ls -l /data /home/ubuntu ~/Desktop/Double-Click-2-Run-Labs ~/NGINX-Fundamentals-Labs/ ~/Desktop/Lab_Files
    ```

7.  The system is now ready to be used for testing or replicated for use in ILT courses.