#!/bin/bash

set -e # exit once any command fails

{
    http_status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8000)

    # Check if the HTTP status code is 200
    if [ "$http_status" -eq 200 ]; then
        echo "done" # let Validator know success
    else
        exit 1
    fi

}
