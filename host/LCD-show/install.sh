#!/bin/bash -v
export $show_target='LCD5-show'
export $show_text="5 inch HDMI tft configured, reboot needed for settings to take affect"

pushd .artifacts/LCD-show

sudo chmod +x ./LCD5-show
sudo ./$show_target
echo $show_text

popd
