#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    sudo apt-get update;
    sudo apt-get dist-upgrade;
    sudo apt-get install pavucontrol linux-sound-base alsa-base alsa-utils linux-image-`uname -r` libasound2;
    sudo apt-get -y --reinstall install linux-sound-base alsa-base alsa-utils linux-image-`uname -r` libasound2;
    killall pulseaudio;
    rm -r ~/.pulse*; ubuntu-support-status; sudo usermod -aG `cat /etc/group | grep -e '^pulse:' -e '^audio:' -e '^pulse-access:' -e '^pulse-rt:' -e '^video:' | awk -F: '{print $1}' | tr '\n' ',' | sed 's:,$::g'` `whoami`
}
main $@;
