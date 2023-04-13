# These are the files for Lab 03

# LPS scripting

{
  "CMDLIST": [
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz",
    "cd /home/student",
    "tar xzvf /tmp/nginx-fundamentals-labs.tgz",
    "ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs",
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab03/public_html.tgz",
    "cd /home",
    "tar -xzvf /tmp/public_html.tgz",
    "chmod -R +x /home/ubuntu",
    "ip route change default via 10.0.0.100"
  ]
}
