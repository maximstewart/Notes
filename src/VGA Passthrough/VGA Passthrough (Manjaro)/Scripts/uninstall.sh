#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)


    rm /usr/bin/vfio-pci-override.sh
    rm /etc/initcpio/install/vfio
    rm /etc/initcpio/hooks/vfio
    rm /etc/modprobe.d/vfio.conf


    if [ -a Backup/grub ]
    	then
    		rm /etc/default/grub
    		cp Backup/grub /etc/default/
    fi

    if [ -a Backup/mkinitcpio.conf ]
    	then
    		rm /etc/mkinitcpio.conf
    		cp Backup/mkinitcpio.conf /etc/
    fi

    mkinitcpio -P
}
main $@;
