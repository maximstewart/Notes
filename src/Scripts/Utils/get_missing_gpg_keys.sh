#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    input=$(zenity --entry --text="Please put your missing key(s) here.
    It will be in hexadecimal format.
    Example: 16126D3A3E5C1192")
    PASSWD="$(zenity --password --title=Authentication)"
    echo -e $PASSWD | sudo -S apt-key adv --keyserver keyserver.ubuntu.com --recv-keys "${input}"
}
main $@;
