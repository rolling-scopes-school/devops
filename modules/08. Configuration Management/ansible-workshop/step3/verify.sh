#!/bin/bash
ansible-inventory --graph -i dynamic_docker.yaml | grep web

LOGFILE=/root/ks/step2-verify.log
set -e # exit once any command fails

{
    date
    cat /root/ansible-workshop/roles/prerequisites/tasks/main.yaml | grep Install

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success