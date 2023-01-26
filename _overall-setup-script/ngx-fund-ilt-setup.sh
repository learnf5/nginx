# Setup an NGINX Fundamentals Workstation for ILT Labs

## suggested way to execute the script on the Lab System 

### Option 1
# bash <(curl -Ls https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh)

### Option 2
# wget -O - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash

read -p "You will be prompted to press the RETURN key after each phase of the prep executes"

## Get and place NGINX Fundamentals Labs and make a desktop icon

wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz

cd /home/student

tar xzvf /tmp/nginx-fundamentals-labs.tgz

ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs

echo "++++++++++++++++++++++++++++++++++++++++"

echo "Check to see if the ls -l output below succeeded and the file is present"

ls -l /home/student/Desktop/*

echo "++++++++++++++++++++++++++++++++++++++++"

read -p "Press the ENTER key to proceed"

clear

## Get and place the public_html contents

wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz

cd /home

tar -xzvf /tmp/public_html.tgz

chmod -R +x /home/ubuntu

echo "++++++++++++++++++++++++++++++++++++++++"

echo "Check to see if the tree output below succeeded and the directory is present"

tree /home/ubuntu/public_html

echo "++++++++++++++++++++++++++++++++++++++++"

read -p "Press the ENTER key to proceed"

clear

## Get and place the data/images contents

wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab05/data-images.tgz

cd /

tar -xzvf /tmp/data-images.tgz

chmod -R +x /data

echo "++++++++++++++++++++++++++++++++++++++++"

echo "Check to see if the tree output below succeeded and the directory is present"

tree /data

echo "++++++++++++++++++++++++++++++++++++++++"

read -p "Press the ENTER key to proceed"

clear

## Get amd place the data/server2 contents

wget -nv -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz

cd /

tar -xzvf /tmp/data-server2.tgz

chmod -R +x /data

echo "++++++++++++++++++++++++++++++++++++++++"

echo "Check to see if the tree output below succeeded and the directory is present"

tree /data

echo "++++++++++++++++++++++++++++++++++++++++"

read -p "Press the ENTER key to proceed"

clear
