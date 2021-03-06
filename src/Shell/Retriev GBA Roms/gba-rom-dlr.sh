#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    cat page.lst| while read line; do 
        wget "$(wget "$line" -O- -q|grep ".zip"|grep "product_download_url"|sed 's/http/\nhttp/g'|grep "download.f"|cut -d\" -f1)";
    done
}
main $@;
