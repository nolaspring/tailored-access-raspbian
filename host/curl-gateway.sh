#!/bin/bash -v

echo 'curl gateway'
echo 'current working folder' pwd
#get artifacts that need installing
mkdir ./artifacts
#collect artifacts
./LCD-show/get-arifacts.sh
#install artifacts
./LCD-show/LCD35-show

#cleanup artifact installation folders
popd
rm -rf ./artifacts

#configure services
./wifi/configure.sh


#reboot (wait if asked)
#sudo reboot


#set up validation hook
