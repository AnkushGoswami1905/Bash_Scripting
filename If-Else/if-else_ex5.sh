#!/bin/bash

#command=htop
#if command -v $command

command=/usr/bin/htop

if [ -f $command ]
then
    echo "$command is availaible, let's run it..."
else
   echo "$command is NOT available, installing it..."
   sudo apt update && sudo apt install -y htop
fi

$command

# command -v : to check if a command is available or not.

