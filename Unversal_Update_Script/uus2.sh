#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
   # The host is based on Arch, run the pacman update
   sudo pacman -syu
fi

#if  grep -q "Debian" $release_file
#then
   # The host is based on Debian,
   # Run the apt version of the command
#   sudo apt update
#   sudo apt dist-upgrade
#fi

if  grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
   # The host is based on ubuntu or Debian,
   # Run the apt version of the command
   sudo apt update
   sudo apt dist-upgrade
fi

# -q is quit mode, it don't print anything on the screen.
# grep cmnd is looking for word "Arch" & "Ubuntu".

