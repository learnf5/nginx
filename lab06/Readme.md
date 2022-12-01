# These are the files for Lab 06

# LPS scripting

{
  "CMDLIST": [
    "mkdir /home/student/Desktop/Lab_Files",
    "wget -P /home/student/Desktop/Lab_Files https://github.com/learnf5/nginx/raw/main/Lab06_Using-Variables.pdf",
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab06/public_html.tgz",
    "cd /home",
    "tar -xzvf /tmp/public_html.tgz",
    "chmod -R +x /home/ubuntu",
    "ip route change default via 10.0.0.100"
  ]
}