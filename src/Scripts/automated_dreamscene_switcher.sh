#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


pre_main() {
    if [ -f $HOME/.config/dreamShuffle/conf.txt ]; then
        main;
    else
        mkdir $HOME/.config/dreamShuffle/
        touch $HOME/.config/dreamShuffle/conf.txt
        rootDreamScene=$(zenity --entry --text "Please select the root directory of your Dreamscene file(s)!
                   Note: All files must be in a single directory.
                   Ie: Just in folder1/ NOT in folder1/ and  folder1/sub1/ folder2/ etc" --entry-text "");
        echo ${rootDreamScene} > $HOME/.config/dreamShuffle/conf.txt
    fi
}

function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    pre_main

    i=1;
    IFS=$'\n'
    rootDir=$(cat $HOME/.config/dreamShuffle/conf.txt)
    files=($( find ${rootDir} -type f ))
    fc=${#files[@]}

    while [ $i -eq $i ]; do
    killall xwinwrap

        mon1=$(shuf -i1-$fc -n1)
        xwinwrap -ov -g 1920x1080 -st -sp -b -nf -s -ni -- mplayer -wid WID -loop 0 ${files[mon1]} &

        mon2=$(shuf -i1-$fc -n1)
        xwinwrap -ov -g 1600x900+1920+0 -st -sp -b -nf -s -ni -- mplayer -wid WID -loop 0 ${files[mon2]} &

        sleep 120 ;
    done
}
main $@;
