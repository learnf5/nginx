1) Publish the complete lab guide from Xyleme
2) Use NGINX NOVA - CDS
3) Choose ZIP file output
4) Download the ZIP to a local system
** Damian copied the zip over to a linux workstation to insure no macOS files in the tgz output **
5) Unpackage the ZIP - there are two internal folder layers, you need the files in the second layer
6) Rename the folder containing all the HTML Lab Guide files - NGINX-Fundamentals-Labs
** YOU MUST USE THIS FILE NAME TO INSURE LPS SCRIPT WILL WORK **
7) Create a new tgz of folder NGINX-Fundamental-Labs using the following commands:
    a) cd ~/Downloads #change directories so your inside the folder that contains the target NGINX-Fundamentals-Labs folder
    b-1) tar -cvzf nginx-fundamentals-labs.tgz /NGINX-Fundamentals-Labs #LINUX system, do not include sudo on this command
    b-2) tar -cvzf nginx-fundamentals-labs.tgz NGINX-Fundamentals-Labs  #Windows system, remove the leading "/" from the target folder
8) Copy the end file back to your local system (if necessary)
9) upload the new file to GitHub repo https://github.com/learnf5/nginx
10) TEST the new file by launching a NGINX Fundamentals Lab from LearnF5
