1) Publish the complete lab guide from Xyleme
2) Update Publishing Date on Cover Page in Xyleme
3) Use NGINX NOVA - CDS
4) Choose ZIP file output
5) Download the ZIP to a local system
** Damian copied the zip over to a linux workstation to insure no macOS files in the tgz output **
5) Unpackage the ZIP - there are two internal folder layers, you need the files in the second layer
6) Rename the folder containing all the HTML Lab Guide files - NGINX-Fundamentals-Labs
** YOU MUST USE THIS FILE NAME TO INSURE LPS SCRIPT WILL WORK **
7) Create a new tgz of folder NGINX-Fundamental-Labs using the following commands:
8) cd ~/Downloads #change directories so your inside the folder that contains the target NGINX-Fundamentals-Labs folder
9) tar -cvzf nginx-fundamentals-labs.tgz /NGINX-Fundamentals-Labs #LINUX system, do not include sudo on this command
10) tar -cvzf nginx-fundamentals-labs.tgz NGINX-Fundamentals-Labs  #Windows system, remove the leading "/" from the target folder
11) Copy the end file back to your local system (if necessary)
12) upload the new file to GitHub repo https://github.com/learnf5/nginx
13) TEST the new file by launching a NGINX Fundamentals Lab from LearnF5
14) Place a copy of nginx-fundamentals-labs.tgz in Xyleme CDS here, https://f5.bravais.com/adminportal/documents#%2F1635
