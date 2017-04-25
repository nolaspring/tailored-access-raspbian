#!/bin/bash -v

sudo dd bs=4M if=/raspbian/images/2017-03-02-raspbian-jessie.img of=/dev/sdb status=progress


sudo mount /dev/sdb1 /disks/boot
sudo mount /dev/sdb2 /disks/linux

pushd host
sudo ./curl-gateway.sh
popd

sudo umount /dev/sdb1
sudo umount /dev/sdb2
