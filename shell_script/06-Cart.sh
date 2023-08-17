#!/bin/bash
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
yum install nodejs -y
useradd roboshop
mkdir /app 
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip 
cd /app 
unzip /tmp/cart.zip
cd /app 
#sudo amazon-linux-extras install nodejs12 -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
. ~/.nvm/nvm.sh
nvm install --lts
cp /root/raghu_devopsfulltime_projects/shell_script/cart.service /etc/systemd/system/cart.service
systemctl daemon-reload
systemctl enable cart 
systemctl start cart