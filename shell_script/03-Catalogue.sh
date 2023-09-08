#!/bin/bash
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
yum install nodejs -y
useradd roboshop
mkdir /app 
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip 
cd /app 
unzip /tmp/catalogue.zip
cd /app 
npm install 
cp /root/raghu_devopsfulltime_projects/shell_script/catalogue.service  /etc/systemd/system/catalogue.service
systemctl daemon-reload
systemctl enable catalogue 
systemctl start catalogue
cp  /root/raghu_devopsfulltime_projects/shell_script/mongodb-org-5.0.repo  /etc/yum.repos.d/mongodb-org-5.0.repo
yum install mongodb-org-shell -y
mongo --host 18.223.168.228 </app/schema/catalogue.js