#!/bin/bash
set -x 
echo starting...

git clone https://github.com/rolling-scopes-school/devops.git
cd devops
git checkout feature/containers
cd modules/9.Containers/app/

echo done > /tmp/finished
