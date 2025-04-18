#!/bin/bash

if [ -d /etc/pacman.d ]
then
   # The host is based on Arch, run the pacman update
   sudo pacman -syu
fi

if [ -d /etc/apt ]
then
   # The host is based on Debian or ubuntu,
   # Run the apt version of the command
   sudo apt update
   sudo apt dist-upgrade
fi

