#!/bin/bash

set -e # exit once any command fails

{
    CURRENT_REPLICAS=$(kubectl get replicaset fastapi-replicaset -o=jsonpath='{.status.availableReplicas}')

    # Check if the current number of replicas matches the expected number
    if [[ "$CURRENT_REPLICAS" -eq 2 ]]; then
    echo "done"
    exit 0
    else
    exit 1
    fi

}

