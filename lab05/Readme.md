These are the files for Lab 05

Instructions:

{
  "CMDLIST": [
    "mkdir /home/student/Desktop/Lab_Files",
    "wget -P /home/student/Desktop/Lab_Files https://github.com/learnf5/nginx/raw/main/Lab_5_Serving_Content.pdf",
    "wget -P /etc/nginx/conf.d https://github.com/learnf5/nginx/raw/main/lab05/mywebserver.conf",
    "mv /etc/nginx/conf.d/default.{conf,bak}",
    "nginx -s reload",
    "ip route change default via 10.0.0.100"
  ]
}