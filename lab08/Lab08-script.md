# These are the files for Lab 08

# LPS scripting

{
  "CMDLIST": [
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/nginx-fundamentals-labs.tgz",
    "cd /home/student",
    "tar xzvf /tmp/nginx-fundamentals-labs.tgz",
    "ln -s /home/student/NGINX-Fundamentals-Labs/index.html /home/student/Desktop/Double-Click-2-Run-Labs",
    "wget -P /etc/nginx/conf.d https://github.com/learnf5/nginx/raw/main/lab08/mywebserver.bak",
    "wget -P /tmp https://github.com/learnf5/nginx/raw/main/lab08/data-images.tgz",
    "cd /",
    "tar -xzvf /tmp/data-images.tgz",
    "chmod -R +x /data",
    "ip route change default via 10.0.0.100"
  ]
}
