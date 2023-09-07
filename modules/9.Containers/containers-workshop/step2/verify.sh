#!/bin/bash

# Send a GET request to localhost:80 and store the HTTP status code in a variable
http_status=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8000)

# Check if the HTTP status code is 200
if [ "$http_status" -eq 200 ]; then
    echo "Application is up and running"
else
    echo "Application is not working"
fi