#!/bin/bash
set -x 
echo starting...

git clone https://github.com/rolling-scopes-school/devops.git
cd devops/modules/9.Containers/app/
git checkout feature/containers

echo done > /tmp/finished
