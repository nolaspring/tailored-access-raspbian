#!/bin/bash -v
if [ -z "$1" ]; then
  echo "Provide target root folder as argument 1"
  echo "deploy.sh [TARGET_ROOT] [SSID] [WPA_PASSPHRASE]"
  exit
fi

# if [ -z "$2" && -z "$3"]; then
#   echo "Provide ssid and wpa passphrase as arguments 2 and 3"
#   echo "deploy.sh [TARGET_ROOT] [SSID] [WPA_PASSPHRASE]"
#   exit
# fi

TARGET_ROOT=$1
DRIVER_ROOT=$2
# SSID_0=$2
# WPA_PASSPHRASE=$3

sudo cp -rf config.txt $TARGET_ROOT/boot/config.txt
sudo cp cmdline.txt $TARGET_ROOT/boot/
#depricated - sudo cp ./usr/inittab /etc/
sudo cp -rf ./99-fbturbo.conf $TARGET_ROOT/linux/usr/share/X11/xorg.conf.d/99-fbturbo.conf
sudo rm -rf $TARGET_ROOT/linux/etc/X11/xorg.conf.d
sudo mkdir $TARGET_ROOT/linux/etc/X11/xorg.conf.d
sudo cp -rf ./99-calibration.conf $TARGET_ROOT/linux/etc/X11/xorg.conf.d/99-calibration.conf

# wpa_passphrase where_are_my_paaaaants the_casa_again >> /raspbian/linux/etc/wpa_supplicant/wpa_supplicant.conf
sudo cp $DRIVER_ROOT/tft9341-overlay.dtb $TARGET_ROOT/boot/overlays
sudo cp $DRIVER_ROOT/tft35a-overlay.dtb $TARGET_ROOT/boot/overlays


exit
