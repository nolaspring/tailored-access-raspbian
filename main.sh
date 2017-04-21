#!/bin/bash -v
sudo mount /dev/sda1 /disks/boot
sudo mount /dev/sda2 /disks/linux

pushd host
sudo ./curl-gateway.sh
popd

sudo umount /dev/sda1
sudo umount /dev/sda2
