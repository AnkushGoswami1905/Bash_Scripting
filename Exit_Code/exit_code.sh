#!/bin/bash

package=notexist

sudo apt install $package

if [ $? -eq 0 ]
then
    echo "The installation of $package was succesfull"
    echo "The new command is avilable here:"
    which $package
else
   echo "$package failed to install...."
fi
