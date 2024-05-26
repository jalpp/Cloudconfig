#!/bin/bash
# script to install Node js and httpd on a new server 
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
. ~/.nvm/nvm.sh
nvm install 18.12.1
echo "<div> <h1>Server Private IP $(hostname -f)</h1> </div> <div> <p> This is a test server user data script which is created from command line start up and installing Node js </p> </div>" > /var/www/html/index.html
