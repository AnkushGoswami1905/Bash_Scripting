#!/bin/bash

#package=notexist
package=htop

sudo apt install $package >> package_install_result.log

if [ $? -eq 0 ]
then
    echo "The installation of $package was succesfull"
    echo "The new command is avilable here:"
    which $package
else
   echo "$package failed to install...." >> package_install_failure.log
fi

