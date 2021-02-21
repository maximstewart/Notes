#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    while [[ "${INPUT}" != 1 && "${INPUT}" != 2 && "${INPUT}" != 3 ]]
    do
        clear

        echo "Servers:";
        echo "1) media -- Family Room";
        echo "2) media2 -- Dad's study";
        echo "3) ";
        echo "Note: Type the assigned number to chose a server.";
        read -p "" INPUT

        case "${INPUT}" in
            1)  op1;;
            2)  op2;;
            3)  op3;;
            *) echo "Not a known option...";;
        esac
    done
}

function op1() {
    gvncviewer 192.168.1.7:0
}

function op2() {
    gvncviewer 192.168.1.15:0
}

function op3() {
    echo "No server coded in yet. Edit file to add one."
}

main $@;
