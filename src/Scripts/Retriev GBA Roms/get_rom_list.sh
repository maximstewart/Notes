#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


dots() {
    while [ 1 ]; do
        sleep 1
        echo -n "."
    done
}

function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    clear
    echo -n "Getting URLs of ROM pages."
    dots&
    dotid=$!
    for i in {A..Z}; do
        wget -O- -q "http://www.freeroms.com/gameboy_color_roms_$i.htm"|\
        grep "game_id.value"|\
        sed 's/http/\nhttp/g'|\
        grep "^http"|\
        cut -d\" -f1|\
        grep htm
    done > page.lst

    echo ""
    echo "Creating ROM list."
    echo "This will take a while."
    cat page.lst|while read line;do
        wget "$line" -O- -q|\
        grep ".zip"|\
        grep "product_download_url"|\
        sed 's/http/\nhttp/g'|\
        grep "download.f"|\
        cut -d\" -f1;
    done > rom.lst
    echo ""
    echo "ROM list complete!"
    kill $dotid
}
main $@;
