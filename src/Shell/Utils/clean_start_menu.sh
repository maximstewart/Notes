#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    for i in /usr/share/applications/*.desktop; do which $(grep -Poh '(?<=Exec=).*?( |$)' $i) > /dev/null || sudo rm $i; done
    for i in ~/.local/share/applications/*.desktop; do which $(grep -Poh '(?<=Exec=).*?( |$)' $i) > /dev/null || sudo rm $i; done
}
main $@;
