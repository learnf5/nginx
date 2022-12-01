# These are the files for Lab 10

# LPS scripting

{
  "CMDLIST": [
    "mkdir /home/student/Desktop/Lab_Files",
    "wget -P /home/student/Desktop/Lab_Files https://github.com/learnf5/nginx/raw/main/lab10/Lab10_Mapping-Variables.pdf",
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab10/public_html.tgz",
    "cd /home",
    "tar -xzvf /tmp/public_html.tgz",
    "chmod -R +x /home/ubuntu",
    "ip route change default via 10.0.0.100"
  ]
}