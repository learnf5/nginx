# These are the files for Lab 08

# LPS scripting

{
  "CMDLIST": [
    "mkdir /home/student/Desktop/Lab_Files",
    "wget -P /home/student/Desktop/Lab_Files https://github.com/learnf5/nginx/raw/main/lab08/Lab08-Proxying_Requests.pdf",
    "wget -P /etc/nginx/conf.d https://github.com/learnf5/nginx/raw/main/lab08/mywebserver.bak",
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-server2.tgz",
    "cd /",
    "tar -xzvf /tmp/data-server2.tgz",
    "chmod -R +x /data",
    "ip route change default via 10.0.0.100"
  ]
}
