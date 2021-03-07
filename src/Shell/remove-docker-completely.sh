#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    sudo apt-get purge -y docker-engine docker docker.io docker-ce
    sudo apt-get autoremove -y --purge docker-engine docker docker.io docker-ce
    sudo umount /var/lib/docker/
    sudo rm -rf /var/lib/docker /etc/docker
    sudo rm /etc/apparmor.d/docker
    sudo groupdel docker
    sudo rm -rf /var/run/docker.sock
    sudo rm -rf /usr/bin/docker-compose
}
main $@;
