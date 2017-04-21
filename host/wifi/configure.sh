#!/bin/bash -v
cp /disk/linux/usr/wpa_supplicant.conf /disk/boot
wpa_passphrase 'where_are_my_paaaaants' 'the_casa_again' >> /disk/boot/wpa_supplicant.conf
