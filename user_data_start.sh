#!/bin/bash
# script to install Node js and httpd on a new server 
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
sudo yum install nodejs
echo "<div> <h1>Server Private IP $(hostname -f)</h1> </div> <div> <p> This is a test server user data script which is created from command line start up and installing Node js </p> </div>" > /var/www/html/index.html
