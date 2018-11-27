# Sailfish Annoyances
This repository contains a set of Bash scripts which I use on my AquaFish to fix my common issues with the Sailfish OS. I really hope one day I won't need these. I put it in a repo for two reasons:
- I don't want to lose these
- Someone else might find it useful

I linked a source of original solution where applicable. 

## How to use
SSH into your phone and clone the repo by running:

`git clone https://github.com/ksiazkowicz/sailfish-annoyances.git`

Some scripts require root access, not all of them.

## Active

### `install_mpris_proxy.sh` & `disable_mpris_proxy.sh`
SFOS does not support controlling media playback over Bluetooth (for example, with BT headphones) by default. This scripts turns `mpris-proxy` tool from `bluez5-tools` package into a service. `install_mpris_proxy.sh` script will ask you for your root password and will try to install this package automatically.

**Source:** https://together.jolla.com/question/174156/bug-bluetooth-media-control-with-android-apps-and-native-apps/

### ``fix_emoji.sh`` (requires root)
Ancient Android means ancient emoji font. This font has barely any emojis really. It's bad. Most emojis are just black squares. This script replaces emoji font in AlienDalvik with Emoji One font.

**Source:** https://github.com/emojione/emojione/tree/master/extras/fonts

### ``unfuck_browser.sh``
I don't know why, but somehow my MIME handlers got completely messed up. Somehow android-open-url.desktop is a default for no good reason. It just is, enjoy your broken browser.

Or just use this fix instead.

### ``install_adb.sh`` (requires root)
This scripts adds start_adb.sh and alien_env to your OS so you can connect to ADB over WLAN and do some debugging stuff. You still need to add your adb key manually with some good old terminal voodoo. When done, switch to root and run ``start_adb.sh`` (or use sudo).

**Source:** https://together.jolla.com/question/6289/how-do-i-connect-to-android-with-adb-or-send-shell-commands/?comment=172149#comment-172149

## Deprecated

### ``set_dpi_100.sh`` & ``reset_dpi.sh``
**UPDATE:** Fixed in UI Themer

**WORKS ONLY ON AQUAFISH/JOLLA C**

Somehow, after some update, I can't just use UI Themer to set my UI scalling setting to 1.0 instead of default 1.25. I don't like that default. Now, icon sizes don't change (same problem as on Xperia X). Why? No clue, but I wrote these 2 scripts to solve this issue.

**Source:** https://gist.github.com/Frzifus/7cbeea9d7c15fa9607711c23e7e16c4e


### ``disable_unlock_sound.sh`` (requires root)
**UPDATE:** SFOS 2.2 dropped this feature

You still can't disable unlock sound on SFOS, even though it's kinda annoying and it's a weird design choice. Seriously, why should I let anyone around me know that I unlocked my phone? I want to ignore people without making it so obviouus ://////

**Source:** https://together.jolla.com/question/75061/feature-request-disable-unlock-sound/
