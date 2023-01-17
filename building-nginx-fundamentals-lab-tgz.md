Publish the complete lab guide from Xyleme
Use NGINX NOVA - CDS
Choose ZIP file output
Download the ZIP to a local system
** Damian copied the zip over to a linux workstation to insure no macOS files in the tgz output **
Unpackage the ZIP - there are two internal folder layers, you need the files in the second layer
Rename the folder containing all the HTML Lab Guide files - NGINX-Fundamentals-Labs
** YOU MUST USE THIS FILE NAME TO INSURE LPS SCRIPT WILL WORK **
create a new tgz of folder NGINX-Fundamental-Labs
cd ~/Downloads
tar -cvzf nginx-fundamentals-labs.tgz /NGINX-Fundamentals-Labs
** do not include sudo on this command to prevent applying root privlieges to the tgz file **
copy the end file back to your local system (if necessary)
upload the new file to GitHub repo https://github.com/learnf5/nginx
TEST the new file by launching a NGINX Fundamentals Lab from LearnF5
