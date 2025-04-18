#!/bin/bash

while [ -f ~/testfile ]
do
    echo "As of $(date) the test file exist"
    sleep 2
done

echo "As of $(date) the test file has gone missing"

