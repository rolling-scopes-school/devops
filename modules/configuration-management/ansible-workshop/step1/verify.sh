#!/bin/bash

LOGFILE=/root/ks/step1-verify.log
set -e # exit once any command fails

{
    date
    docker ps | grep db1
    docker ps | grep web

} >> ${LOGFILE} 2>&1

echo "done" # let Validator know success