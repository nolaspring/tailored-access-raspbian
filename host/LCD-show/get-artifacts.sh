#!/bin/bash
pushd .artifacts
git clone https://github.com/nolaspring/LCD-show.git
pushd LCD-show
git checkout tailored-access-raspbian
popd #branch change
popd #clone operation
