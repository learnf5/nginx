#!/bin/bash
#
# PURPOSE:  Script to setup a stock NGINX Fundamentals Workstation for ILT Labs
#####################################################################
# SYSTEM REQUIREMENTS:
#   The NGINX Fundamentals should be setup on a system matching:
#   OS:  Ubuntu 22.04.1 Jammy Jellyfish
#   RAM: 4 GB
#   Disk:  25 GB, configured as EXT4 or the default
#
######################################################################
# Needed Packages:
#    - vim and vim-common
#    - tree
#    - NGINX OSS 1.2.1 and NGINX Plus R27 or higher     
#
#####################################################################
## Methods to Execute this Script on Lab Systems
#####################################################################
###
### To do the setup with confirmations at each Step use the below command:
###
### sudo -i <enter the password if prompted> 
### bash <(curl -s https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)
#####################################################################
###
### To do the setup with no confirmations, use the below command:
###
### wget -qO - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash
#####################################################################
###
### Use the menu.sh script to have a menu for query/wipe/setup
###
#####################################################################
###
### wget -qO - https://raw.githubusercontent.com/learnf5/nginx/main/menu/menu.sh > menu.sh
### chmod +x menu.sh ; ./menu.sh
#####################################################################
###
### END OF INSTRUCTIONS
###
#####################################################################

echo "#############################################################################"
echo " Step 1 of 6  - Starting the Lab System Setup"
echo "#############################################################################"
read -p "You will be prompted to press the RETURN key after each phase of the prep executes"

echo "#############################################################################"
echo " Step 2 of 6 - Pull down HTML Labs and Make Desktop Icon"
echo "#############################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz
cd /home/student
tar xzf /tmp/nginx-fundamentals-labs.tgz
ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs

echo "--------------------------------------------------------------------------"
echo " Verify the presence of the Labs *index.html* file"
echo "--------------------------------------------------------------------------"

ls -l /home/student/NGINX-Fundamentals-Labs/index.html && STEP2="OK - NGINX Lab Files Verified"

read -p "Press the ENTER key to proceed"

echo "#############################################################################"
echo " Step 3 of 6  - Pull down and expand the public_html tree"
echo "#############################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz
cd /home
tar -xzf /tmp/public_html.tgz
chmod -R +x /home/ubuntu

echo "--------------------------------------------------------------------------"
echo " Check for the /home/ubuntu/public_html entry"
echo "--------------------------------------------------------------------------"

ls -ld /home/ubuntu/public_html && STEP3="OK - public_html directory Verified"

read -p "Press the ENTER key to proceed"

echo "#############################################################################"
echo " Step 4 of 6  - Pull down and expand the data/images tree"
echo "#############################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/lab05/data-images.tgz
cd /
tar -xzf /tmp/data-images.tgz
chmod -R +x /data

echo "--------------------------------------------------------------------------"
echo " Check for the /data/images directory and read permissions on it"
echo "--------------------------------------------------------------------------"

tree -p /data && STEP4="OK - /data/images directory Verified"

read -p "Press the ENTER key to proceed"

echo "#############################################################################"
echo " Step 5 of 6  - Get and place the data/server2 tree"
echo "#############################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz
cd /
tar -xzf /tmp/data-server2.tgz
chmod -R +x /data

echo "--------------------------------------------------------------------------"
echo " Check for the /data/server2 directory and read permissions on it"
echo "--------------------------------------------------------------------------"

tree -p /data && STEP5="OK - /data/server2 directory Verified"

read -p "Press the ENTER key to proceed"

echo "#############################################################################"
echo " Step 6 of 6  - Pull clean default.conf and restart NGINX."
echo "#############################################################################"
sudo wget -qP /etc/nginx/conf.d https://raw.githubusercontent.com/learnf5/nginx/main/lab02/default.conf && ls -l /etc/nginx/conf.d/ && sudo nginx -s reload && STEP6="OK - Clean Default.conf and NGINX Reloaded"

echo "#############################################################################"
echo -e "################################# \e[0;32mRESULTS\e[0m ###################################"
echo -e "# If all Steps show a \e[0;32mOK Verified\e[0m message the System is setup #"
echo "#############################################################################"
echo "#############################################################################"

echo -e "STEP 1: \e[0;32mOK - Setup Started \e[0m"
echo -e "STEP 2: \e[0;32m$STEP2 \e[0m"
echo -e "STEP 3: \e[0;32m$STEP3 \e[0m"
echo -e "STEP 4: \e[0;32m$STEP4 \e[0m"
echo -e "STEP 5: \e[0;32m$STEP5 \e[0m"
echo -e "STEP 6: \e[0;32m$STEP6 \e[0m"

