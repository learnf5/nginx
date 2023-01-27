#!/bin/bash
#
# PURPOSE:  Setup a stock NGINX Fundamentals Workstation for ILT Labs
#
## Suggested method to execute the script on the Lab System 
##################################################################
### To do the setup with confirmations at each Step use the below command:
###
### sudo -i <enter the password if prompted> 
### bash <(curl -s https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)
##################################################################
### To do the setup with no confirmations, use the below command:
###
### wget -qO - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash
##################################################################
### IMPORTANT:  To RESET an already-configured Lab Machine back to pre-setup state
###
### sudo rm -rf /data /home/ubuntu ~/Desktop/Double-Click-2-Run-Labs ~/NGINX-Fundamentals-Labs/ ~/Desktop/Lab_Files
##################################################################
### Copy and paste the below command to verify the system doesn't have any Lab files on it
###
### ls -l /data /home/ubuntu ~/Desktop/Double-Click-2-Run-Labs ~/NGINX-Fundamentals-Labs/ ~/Desktop/Lab_Files
##################################################################
##
## This is the start of the script

echo "##########################################################################"
echo " Step 1 of 5  - Starting the Lab System Setup"
echo "##########################################################################"
read -p "You will be prompted to press the RETURN key after each phase of the prep executes"

## Get and place NGINX Fundamentals Labs and make a desktop icon

echo "##########################################################################"
echo " Step 2 of 5 - Pull down HTML Labs and Make Desktop Icon"
echo "##########################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz
cd /home/student
tar xzf /tmp/nginx-fundamentals-labs.tgz
ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs

echo "--------------------------------------------------------------------------"
echo " Verify the presence of the Labs *index.html* file"
echo "--------------------------------------------------------------------------"

ls -l /home/student/NGINX-Fundamentals-Labs/index.html && STEP2="OK"

read -p "Press the ENTER key to proceed"

## Get and place the public_html contents

echo "##########################################################################"
echo " Step 3 of 5  - Pull down and expand the public_html tree"
echo "##########################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz
cd /home
tar -xzf /tmp/public_html.tgz
chmod -R +x /home/ubuntu

echo "--------------------------------------------------------------------------"
echo " Check for the /home/ubuntu/public_html entry"
echo "--------------------------------------------------------------------------"

ls -ld /home/ubuntu && STEP3="OK"

read -p "Press the ENTER key to proceed"

## Get and place the data/images contents

echo "##########################################################################"
echo " Step 4 of 5  - Pull down and expand the data/images tree"
echo "##########################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/lab05/data-images.tgz
cd /
tar -xzf /tmp/data-images.tgz
chmod -R +x /data

echo "--------------------------------------------------------------------------"
echo " Check for the /data/images directory and read permissions on it"
echo "--------------------------------------------------------------------------"

tree -p /data && STEP4="OK"

read -p "Press the ENTER key to proceed"

## Get and place the data/server2 contents

echo "##########################################################################"
echo " Step 5 of 5  - Get and place the data/server2 tree"
echo "##########################################################################"
wget -q -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz
cd /
tar -xzf /tmp/data-server2.tgz
chmod -R +x /data

echo "--------------------------------------------------------------------------"
echo " Check for the /data/server2 directory and read permissions on it"
echo "--------------------------------------------------------------------------"

tree -p /data && STEP5="OK"

read -p "Press the ENTER key to proceed"

echo ""
echo "==================================RESULTS================================="
echo "If all Steps show a green OK, System is setup for Lab Usage"
echo "##########################################################################"
echo ""

echo -e "STEP 1: \e[0;32mOK \e[0m"
echo -e "STEP 2: \e[0;32m$STEP2 \e[0m"
echo -e "STEP 3: \e[0;32m$STEP3 \e[0m"
echo -e "STEP 4: \e[0;32m$STEP4 \e[0m"
echo -e "STEP 5: \e[0;32m$STEP5 \e[0m"