#!/bin/bash -v
pushd .artifacts/LCD-show
cat ./LCD35-show | bash
echo '3.5 inch TFT configure, reboot needed for settings to take effect'
popd
