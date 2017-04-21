#!/bin/bash
pushd .artifacts
git clone https://github.com/nolaspring/LCD-show.git
git pull
git checkout origin tailored-access-raspbian
popd
