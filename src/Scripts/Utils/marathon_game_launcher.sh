#!/bin/bash

# . CONFIG.sh
# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    clear
    answer=$(zenity --text "Please chose which Marathon game to launch!" \
                    --list --radiolist --column "Options" --column "Description" \
                    TRUE "Marathon" \
                    FASLSE "Marathon 2" \
                    FALSE "Marathon Infinity")
        if [[ "${answer}" == "Marathon" ]]; then
                alephone /usr/local/share/AlephOne/Marathon/
        elif [[ "${answer}" == "Marathon 2" ]]; then
                alephone /usr/local/share/AlephOne/Marathon-2/
        elif [[ "${answer}" == "Marathon Infinity" ]]; then
                alephone /usr/local/share/AlephOne/Marathon-Infinity/
        else
                zenity --warning --text "An error occured, re-running....";
                sleep 2;
                main;
        fi
}
main $@;
