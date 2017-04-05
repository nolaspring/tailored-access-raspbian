#!/bin/bash -v
if [ -z "$1" ]; then
  echo "Provide target root folder as argument 1"
  return 1
fi

TARGET_ROOT=$1
sudo cp -rf config.txt $TARGET_ROOT/boot/config.txt
sudo cp ./usr/cmdline.txt $TARGET_ROOT/boot/
#depricated - sudo cp ./usr/inittab /etc/
sudo cp -rf ./99-fbturbo.conf $TARGET_ROOT/linux/usr/share/X11/xorg.conf.d/99-fbturbo.conf
sudo mkdir $TARGET_ROOT/linux/etc/X11/xorg.conf.d
sudo cp -rf ./usr/99-calibration.conf-5 $TARGET_ROOT/linux/etc/X11/xorg.conf.d/99-calibration.conf

sudo cp ./usr/tft9341-overlay.dtb /boot/overlays
sudo cp ./usr/tft35a-overlay.dtb /boot/overlays
