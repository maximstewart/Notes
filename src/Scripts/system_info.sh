#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    clear
    displayVariabls
    displayLSB
    displayCPU
    displayDisks
    displayMemory

}

function displayVariabls() {
    echo "USER: "  $USER
    echo "SHELL: " $SHELL
    echo "PATH: "  $PATH
}

function displayLSB() {
    echo -e "\n----    LSB_RELEASE    ----"
    lsb_release -a
}

function displayCPU() {
    echo -e "\n----    BASIC_CPU_INFO    ----"
    echo -e "Note: For more deatails, use -> cat /proc/cpuinfo\n"
    cat /proc/cpuinfo | grep "cpu cores" | head -n 1
    cat /proc/cpuinfo | grep "vendor_id" | head -n 1
    cat /proc/cpuinfo | grep "model name" | head -n 1
}

function displayDisks() {
    echo -e "\n----    DISK_INFO    ----"
    df -h | grep "/dev/sd"
    # lsblk
}

function displayMemory() {
    echo -e "\n----    MEMORY_INFO    ----"
    free
}
main;
