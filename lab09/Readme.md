# These are the files for Lab 09

# LPS scripting

{
  "CMDLIST": [
    "mkdir /home/student/Desktop/Lab_Files",
    "wget -P /home/student/Desktop/Lab_Files https://github.com/learnf5/nginx/raw/main/lab09/Lab09_Routing-HTTP-Requests.pdf",
    "wget -P /etc/nginx/conf.d https://github.com/learnf5/nginx/raw/main/lab09/mywebserver.bak",
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab09/data-images.tgz",
    "cd /",
    "tar -xzvf /tmp/data-images.tgz",
    "chmod -R +x /data",
    "ip route change default via 10.0.0.100"
  ]
}
