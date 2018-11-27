#!/bin/sh
systemctl --user disable mpris-proxy.service
systemctl --user stop mpris-proxy.service
rm /home/nemo/.config/systemd/user/mpris-proxy.service