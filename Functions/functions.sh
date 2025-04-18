#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_error.log

check_exit_status(){
    if [ $? -ne 0 ]
    then
       echo "An error occured,please check the $errorlog file."
    fi
}

if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command.
    sudo pacman -syu -y 1>> $logfile 2>> $errorlog
    check_exit_status
fi


if grep -q "Ubuntu" $release_file
then
    # The host is based on Ubuntu, run the apt update command.
    sudo apt update -y 1>> $logfile 2>> $errorlog
    check_exit_status

    sudo apt dist-upgrade -y 1>> $logfile 2>> $errorlog
    check_exit_status
fi
