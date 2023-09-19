#!/bin/bash
ansible-inventory --graph -i dynamic_docker.yaml | grep web

LOGFILE=/root/ks/step2-verify.log
set -e # exit once any command fails

{
    date
    curl -I http://127.0.0.1/wp-admin/install.php | grep 200

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success