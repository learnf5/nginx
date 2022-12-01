# These are the files for Lab 05

# LPS scripting

{
  "CMDLIST": [
    "mkdir /home/student/Desktop/Lab_Files",
    "wget -P /home/student/Desktop/Lab_Files https://github.com/learnf5/nginx/raw/main/Lab_5_Serving_Content.pdf",
    "wget -P /etc/nginx/conf.d https://github.com/learnf5/nginx/raw/main/lab05/mywebserver.conf",
    "mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.bak",
    "nginx -s reload",
    "ip route change default via 10.0.0.100"
  ]
}
