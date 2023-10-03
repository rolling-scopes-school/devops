#!/bin/bash
set -x 
echo starting...

pip install ansible

cat >/root/docker-compose.yml <<EOL
version: "3.7"
services:
  web:
    image: cocoabeans/ubuntu-python
    tty: true
    container_name: web1
    labels:
      type: "web"
    ports:
      - "80:80"   
  db:
    image: cocoabeans/ubuntu-python
    tty: true
    container_name: db1
    labels:
      type: "db"
    ports:
      - "3306:3306"
... 
EOL

cd /root/

docker-compose up -d

mkdir ks
echo done > /tmp/finished
