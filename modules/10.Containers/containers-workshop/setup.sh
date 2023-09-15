#!/bin/bash
set -x 
echo starting...
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus=1
eval $(minikube docker-env)
snap install kubectl --classic
git clone https://github.com/rolling-scopes-school/devops.git
cd devops
git checkout feature/containers
cd modules/10.Containers/app/
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
mkdir logs
echo done > /tmp/finished
