#!/bin/bash

set -e # exit once any command fails

{
    EXTERNAL_IP=$(kubectl get svc -o jsonpath='{.items[1].spec.clusterIPs[1]}')

    # Check if the current number of replicas matches the expected number
    http_status=$(curl -s -o /dev/null -w "%{http_code}" http://$EXTERNAL_IP:4000)

    # Check if the HTTP status code is 200
    if [ "$http_status" -eq 200 ]; then
        echo "done" # let Validator know success
    else
        exit 1
    fi

}