#!/bin/bash
killall adbd
chroot /opt/alien /bin/bash -c "source /alien_env && adbd"
