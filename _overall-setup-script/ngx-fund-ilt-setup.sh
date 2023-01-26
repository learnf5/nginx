# Setup an NGINX Fundamentals Workstation for ILT Labs
#
## Suggested method to execute the script on the Lab System 
#
## Copy and Paste the below command to the Lab System terminal
#
# wget -O - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash
#
## This is the start of the script

echo "+++++ This is step 1 of 5  - Starting the Lab System Setup ++++++++++++++++++++++++++"
read -p "You will be prompted to press the RETURN key after each phase of the prep executes"

## Get and place NGINX Fundamentals Labs and make a desktop icon

clear
echo "+++++ This is step 2 of 5 - Pull down HTML Labs and Make Desktop Icon +++++++++"
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz
cd /home/student
tar xzf /tmp/nginx-fundamentals-labs.tgz
ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Check to see if the ls -l output below succeeded and the files are present"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

ls -l /home/student/NGINX-Fundamentals-Labs/index.html ; ls -l /home/student/Desktop/*

read -p "Press the ENTER key to proceed"

## Get and place the public_html contents

clear
echo "+++++ This is step 3 of 5  - Pull down and expand the public_html tree ++"
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz
cd /home
tar -xzf /tmp/public_html.tgz
chmod -R +x /home/ubuntu

echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Check to see if the tree output below succeeded and the directory (and permissions) are present"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

ls -ld /home/ubuntu ; tree /home/ubuntu/public_html

read -p "Press the ENTER key to proceed"

## Get and place the data/images contents

clear
echo "+++++ This is step 4 of 5  - Pull down and expand the data/images tree +++++"
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab05/data-images.tgz
cd /
tar -xzf /tmp/data-images.tgz
chmod -R +x /data

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Check to see if the tree output below succeeded and the directory is present"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

tree /data

read -p "Press the ENTER key to proceed"

## Get and place the data/server2 contents

clear
echo "+++++ This is step 5 of 5  - Get and place the data/server2 tree +++++++++++"
wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz
cd /
tar -xzvf /tmp/data-server2.tgz
chmod -R +x /data

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "Check to see if the tree output below succeeded and the directory is present"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

tree /data

read -p "Press the ENTER key to proceed"

clear
