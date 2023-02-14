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
3.  Pull down the menu.sh script to the system with the command (all on one line):
    ```
    wget -qO - https://raw.githubusercontent.com/learnf5/nginx/main/menu/menu.sh > menu.sh
    ```
4.  Change the permissions to add execute to the script and run it with the command:
    ```
    chmod +x menu.sh ; ./menu.sh
    ```
5.  You'll see the menu items, 1-6 shown on the console, with a prompt.
6.  The normal order of the setup is:
-  A) Confirm the current state by pressing `1` and `ENTER`
-  B) Do the wipe (clear off old training files) with a `2` and `ENTER` 
-  C) Setup the system with a `3` and `ENTER` (look for the green OKs)
-  D) Finish the setup of default.conf and clearing history with a `4` and `ENTER`.
7.  Do a final setup confirmation by pressing `1` and `ENTER` again to inspect what's shown for any errors.
8.  When satisfied, press `6` and `ENTER` to end the script
9.  Immediately shutdown the newly-setup lab system, it's ready to use.