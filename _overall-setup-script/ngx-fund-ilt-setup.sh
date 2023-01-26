# Setup an NGINX Fundamentals Workstation for ILT Labs

## Get and place NGINX Fundamentals Labs and make a desktop icon

wget -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz

cd /home/student

tar xzvf /tmp/nginx-fundamentals-labs.tgz

ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs

## Get and place the public_html contents

wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz

cd /home

tar -xzvf /tmp/public_html.tgz

chmod -R +x /home/ubuntu

## Get and place the data/images contents

wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab05/data-images.tgz

cd /

tar -xzvf /tmp/data-images.tgz

chmod -R +x /data

## Get amd place the data/server2 contents

wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz

cd /

tar -xzvf /tmp/data-server2.tgz

chmod -R +x /data

