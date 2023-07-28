#!/bin/bash
ansible-inventory --graph -i dynamic_docker.yaml | grep web

LOGFILE=/root/ks/step2-verify.log
set -e # exit once any command fails

{
    date
    ansible-inventory --graph -i dynamic_docker.yaml | grep web
    ansible-inventory --graph -i dynamic_docker.yaml | grep db

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success