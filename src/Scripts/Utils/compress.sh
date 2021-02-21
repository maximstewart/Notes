#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    for i in `ls`; do
        if [[ -d "${i}" ]]; then
            7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on "${i}".7z ./"${i}"
        fi
    done
}
main
