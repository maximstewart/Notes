#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    sudo apt-get install libvirt-bin libiscsi-bin libaio1 qemu qemu-block-extra qemu-kvm
    sleep 4
    clear
    echo "Now run something like:"
    echo "sudo qemu-system-x86_64 -m 4G -boot c -hda /dev/sdb"
}

main $@;
