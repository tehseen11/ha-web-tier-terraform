#!/bin/bash

dnf update -y

dnf install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>HA Web Application</title>
</head>
<body>
    <h1>Highly Available Web Application</h1>
    <p>Terraform + AWS ALB + Auto Scaling</p>
    <p>Instance: $(hostname)</p>
</body>
</html>
EOF