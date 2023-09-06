#!/bin/bash
set -x 
echo starting...

git clone https://github.com/rolling-scopes-school/devops.git
git checkout feature/containers
cd devops/modules/9.Containers/app/


mkdir ks
echo done > /tmp/finished
