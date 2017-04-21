#!/bin/bash -v
echo 'curl gateway'
echo 'current working folder '$(pwd)
#get artifacts that need installing
mkdir ./.artifacts
#collect artifacts
sudo ./LCD-show/get-artifacts.sh
#install artifacts
sudo ./LCD-show/install.sh
#cleanup artifact installation folders
rm -rf ./.artifacts

#configure services
sudo ./wifi/configure.sh


#reboot (wait if asked)
#sudo reboot


#set up validation hook
