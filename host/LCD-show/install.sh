#!/bin/bash -v
pushd .artifacts/LCD-show
sudo chmod +x ./LCD35-show
sudo ./LCD35-show
echo '3.5 inch TFT configure, reboot needed for settings to take effect'
popd
