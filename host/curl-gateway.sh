#!/bin/bash -vecho 'curl gateway'
echo 'current working folder '$(pwd)
#get artifacts that need installing
mkdir ./artifacts
#collect artifacts
sudo ./LCD-show/get-arifacts.sh
#install artifacts
sudo .artifacts/LCD-show/LCD35-show
#cleanup artifact installation folders
rm -rf ./artifacts

#configure services
./wifi/configure.sh


#reboot (wait if asked)
#sudo reboot


#set up validation hook
