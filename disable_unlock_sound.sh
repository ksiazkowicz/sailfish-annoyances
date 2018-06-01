#!/bin/bash
# Disables that god awful unlock sound
# Jolla plz add a toggle for that or remove it completely ._.
mkdir .backups
mv /usr/share/ngfd/events.d/unlock_device.ini ./.backups/unlock_device.ini.bak
