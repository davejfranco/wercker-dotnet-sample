#!/bin/bash

RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8000)

if [[ $RESPONSE -eq 200 ]]; 
then
    echo "Test passed, response code: " $RESPONSE
else
    echo "Test failed, response code: " $RESPONSE
    exit 1
fi