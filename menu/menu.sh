#!/bin/bash

PS3="Choose what # to perform an action: "

select act in Query Wipe Setup Quit
do
    case $act in
        "Query")
            ls -ld /data /home/ubuntu /home/student/Desktop/Double-Click-2-Run-Labs /home/student/NGINX-Fundamentals-Labs/ /home/student/Desktop/Lab_Files /etc/nginx/conf.d/* /var/log/nginx/*{access,error}.log
           read -p "Enter to Continue?" ;;
        "Wipe")
           sudo rm -rf /data /home/ubuntu ~/Desktop/Double-Click-2-Run-Labs ~/NGINX-Fundamentals-Labs/ ~/Desktop/Lab_Files /etc/nginx/conf.d/my*.* /var/log/nginx/*{access,error}.log && echo "Wipe Completed Successfuly."
           read -p "Enter to Continue?" ;;
        "Setup")
           wget -qO - https://raw.githubusercontent.com/learnf5/nginx/main/_overall-setup-script/ngx-fund-ilt-setup.sh | sudo bash
           read -p "Enter to Continue?" ;;
        "Quit")
           echo "We're done"
           break;;
        *)
           echo "Ooops";;
    esac
done
