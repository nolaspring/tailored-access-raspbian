#!/bin/bash -vecho 'curl gateway'
echo 'current working folder '$(pwd)
#get artifacts that need installing
mkdir ./.artifacts
#collect artifacts
sudo cat ./LCD-show/get-artifacts.sh | bash
#install artifacts
sudo cat .artifacts/LCD-show/LCD35-show | bash
#cleanup artifact installation folders
rm -rf ./.artifacts

#configure services
sudo cat ./wifi/configure.sh | bash


#reboot (wait if asked)
#sudo reboot


#set up validation hook
