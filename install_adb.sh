#!/bin/bash
# Adds adb to AlienDalvik, you still need to add your adb key
# manually
# https://together.jolla.com/question/6289/how-do-i-connect-to-android-with-adb-or-send-shell-commands/?comment=172149#comment-172149
cp adb/alien_env /opt/alien/alien_env
cp adb/start_adb.sh /usr/bin/start_adb
chmod +x /opt/alien/alien_env
chmod +x /usr/bin/start_adb
