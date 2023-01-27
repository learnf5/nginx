#!/bin/bash
#
# Setup an NGINX Fundamentals Workstation for ILT Labs
#
## Suggested method to execute the script on the Lab System 
#
## Copy and Paste the below command to the Lab System terminal
#
# wget -O - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash
#
##      bash <(curl -s https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)
## sudo bash <(curl -s https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)
#
## sudo rm -rf /data ; sudo rm -rf /home/ubuntu ; sudo rm -f ~/Desktop/Double-Click-2-Run-Labs ; sudo rm -rf ~/NGINX-Fundamentals-Labs/ ; sudo rm -rf ~/Desktop/Lab_Files

#
## This is the start of the script

echo "=========================================================================="
echo " Step 1 of 5  - Starting the Lab System Setup"
echo "=========================================================================="
read -p "You will be prompted to press the RETURN key after each phase of the prep executes"

## Get and place NGINX Fundamentals Labs and make a desktop icon

echo "=========================================================================="
echo " Step 2 of 5 - Pull down HTML Labs and Make Desktop Icon"
echo "=========================================================================="
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz
cd /home/student
tar xzf /tmp/nginx-fundamentals-labs.tgz
ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " Verify the presence of the Labs *index.html* file"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

ls -l /home/student/NGINX-Fundamentals-Labs/index.html

read -p "Press the ENTER key to proceed"

## Get and place the public_html contents

echo "=========================================================================="
echo " Step 3 of 5  - Pull down and expand the public_html tree"
echo "=========================================================================="
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz
cd /home
tar -xzf /tmp/public_html.tgz
chmod -R +x /home/ubuntu

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo " Check for the /home/ubuntu entry, as well as the permissions in the tree output"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

ls -ld /home/ubuntu ; tree -p /home/ubuntu/public_html

read -p "Press the ENTER key to proceed"

## Get and place the data/images contents

echo "=========================================================================="
echo " Step 4 of 5  - Pull down and expand the data/images tree"
echo "=========================================================================="
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab05/data-images.tgz
cd /
tar -xzf /tmp/data-images.tgz
chmod -R +x /data

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Check to see if the tree output below succeeded and the directory is present"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

tree -p /data

read -p "Press the ENTER key to proceed"

## Get and place the data/server2 contents

echo "=========================================================================="
echo " Step 5 of 5  - Get and place the data/server2 tree"
echo "=========================================================================="
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz
cd /
tar -xzf /tmp/data-server2.tgz
chmod -R +x /data

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Check to see if the tree output below succeeded and the directory is present"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

tree -p /data

read -p "Press the ENTER key to proceed"

echo "=========================================================================="
echo "If you saw the required output, the system is setup for the ILT Labs"
echo "=========================================================================="