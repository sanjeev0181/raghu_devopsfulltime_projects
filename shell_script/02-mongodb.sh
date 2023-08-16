#!/bin/bash
cp vim /etc/yum.repos.d/mongo.repo
sudo yum makecache
sudo yum install -y mongodb-org
systemctl enable mongod 
systemctl start mongod 
#127.0.0.1 to 0.0.0.0 in /etc/mongod.conf
systemctl restart mongod