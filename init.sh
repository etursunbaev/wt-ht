#!/bin/bash

# get admin privileges
sudo su

# install httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service

cat > /var/www/html/index.html << EOF

<!DOCTYPE html>
<html>
<head>
<title>My Test Work</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  padding: 4px;
  width: 40%;
}
h1 {
  color:#094981;
  text-align:center;
}
</style>
</head>
<body>
<h1>Hello, team! :)</h1>
<table>
<colgroup>
<col>
<col style="background-color: silver">
</colgroup>
<tr><th>Tag Name</th><th>Tag Value</th></tr>
EOF
tags=( Date_creation OS_type Your_First_Name Your_Last_Name AWS_Account_ID )

for tag in ${tags[@]}
do
    outres=$(curl http://169.254.169.254/latest/meta-data/tags/instance/$tag)
    echo "<tr><td>$tag</td><td>$outres</td><tr>" >> /var/www/html/index.html
done
cat >> /var/www/html/index.html << EOF
</table>
</body>
</html>
EOF