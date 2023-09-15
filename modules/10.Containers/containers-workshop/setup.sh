#!/bin/bash
set -x 
echo starting...

git clone https://github.com/rolling-scopes-school/devops.git
cd devops
git checkout feature/containers
cd modules/10.Containers/app/
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
eval $(minikube docker-env)
mkdir logs
echo done > /tmp/finished
