#!/bin/bash
sudo rpm --import https://www.mongodb.org/static/pgp/server-5.0.asc
cp vim /etc/yum.repos.d/mongo.repo
sudo yum makecache
sudo yum install -y mongodb-org
systemctl enable mongodb
systemctl start mongodb 
#127.0.0.1 to 0.0.0.0 in /etc/mongod.conf
systemctl restart mongodb