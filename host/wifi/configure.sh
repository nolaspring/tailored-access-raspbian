#!/bin/bash -v
cp /disks/linux/usr/wpa_supplicant.conf /disks/boot
wpa_passphrase 'where_are_my_paaaaants' 'the_casa_again' >> /disks/boot/wpa_supplicant.conf
