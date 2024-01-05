1) Publish the complete lab guide from Xyleme
2) Update Publishing Date on Cover Page in Xyleme
3) Use NGINX NOVA - CDS
4) Choose ZIP file output
5) Download the ZIP to a local system
** Damian copied the zip over to a linux workstation to insure no macOS files in the tgz output **
5) Unpackage the ZIP - there are two internal folder layers, you need the files in the second layer
6) Rename the folder containing all the HTML Lab Guide files - <lab-profile-name>
** YOU MUST USE THIS FILE NAME TO INSURE LPS SCRIPT WILL WORK **
   example: NAD-L01L01-Proces for the first lab in Administering NGINX
8) Create a new tgz of the target Lab Guide folder using the following commands:
9) Change directories so your inside the parent folder that contains the target <lab-profile-name> folder
10a) tar -cvzf <lab-profile-name>.tgz /<lab-profile-name> #LINUX system, do not include sudo on this command
10b) tar -cvzf <lab-profile-name>.tgz <lab-profile-name>  #Windows system, remove the leading "/" from the target folder
11) Copy the end file back to your local system (if necessary)
12) upload the new file to GitHub repo (private) https://github.com/learnf5/labs/<course-folder>
** in the corresponding folder for the course, ex. NAD for Administering NGINX, Admin for Administering BIG-IP
14) TEST the new file by launching the Lab from Skillable Studio or LearnF5
15) Place a copy of <lab-profile-name>.tgz in Xyleme CDS eLearing product folder, https://f5.bravais.com/adminportal/
