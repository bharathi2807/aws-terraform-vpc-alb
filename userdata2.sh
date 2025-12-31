#!/bin/bash
set -euxo pipefail

dnf update -y
dnf install -y httpd aws-cli

INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
</head>
<body>
  <h1>Terraform Project Server 2</h1>
  <h2>Instance ID: $INSTANCE_ID</h2>
  <p>Welcome to Instance Two</p>
</body>
</html>
EOF

systemctl daemon-reexec
systemctl daemon-reload
systemctl restart httpd
systemctl enable httpd
