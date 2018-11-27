#!/bin/sh
# Original author: https://together.jolla.com/users/2121/jollajo/
# Source: https://together.jolla.com/question/174156/bug-bluetooth-media-control-with-android-apps-and-native-apps/
devel-su pkcon install bluez5-tools
mkdir -p /home/nemo/.config/systemd/user
cp ./mpris_proxy/mpris-proxy.service /home/nemo/.config/systemd/user
systemctl --user enable mpris-proxy.service
systemctl --user start mpris-proxy.service