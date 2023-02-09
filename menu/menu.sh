#!/bin/bash

PS3="Choose what # to perform an action: "

select act in Query Wipe Setup Mopup Quit
do
    case $act in
        "Query")
            ls -ld /data /home/ubuntu /home/student/Desktop/Double-Click-2-Run-Labs /home/student/NGINX-Fundamentals-Labs/ /home/student/Desktop/Lab_Files /etc/nginx/conf.d/{my,ret,ssl}*.*/var/log/nginx/*{access,error}.log ;;
        "Wipe")
           sudo rm -rf /data /home/ubuntu /home/student/Desktop/Double-Click-2-Run-Labs /home/student/NGINX-Fundamentals-Labs/ /home/student/Desktop/Lab_Files /etc/nginx/conf.d/my*.* /var/log/nginx/*{access,error}.log && echo "Wipe Completed Successfuly." ;;
        "Setup")
           wget -qO - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash ;;
        "Mopup")
           sudo mv /etc/nginx/conf.d/default.{bak,conf} ; ls -l /etc/nginx/conf.d/ ; history -c ;;
        "Quit")
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
