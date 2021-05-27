#!/bin/bash

# . CONFIG.sh
# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    clear
    BACKUPDIR="${HOME}/Downloads/Linux-Profile"
    echo "Backing up to: " ${BACKUPDIR}
    rm -rf ${BACKUPDIR}
    mkdir ${BACKUPDIR}

    # Dirs
    echo "Backing up .config/ ..."
    cp -r ${HOME}/.config/ ${BACKUPDIR}
    echo "Backing up .screenlayout/ ..."
    cp -r ${HOME}/.screenlayout/ ${BACKUPDIR}
    echo "Backing up .themes/ ..."
    cp -r ${HOME}/.themes/ ${BACKUPDIR}
    echo "Backing up .icons/ ..."
    cp -r ${HOME}/.icons/ ${BACKUPDIR}
    echo "Backing up .devilspie* ..."
    cp -r ${HOME}/.devilspie* ${BACKUPDIR}
    echo "Backing up .mplayer/ ..."
    cp -r ${HOME}/.mplayer/ ${BACKUPDIR}
    echo "Backing up .atom/ ..."
    cp -r ${HOME}/.atom/ ${BACKUPDIR}
    echo "Backing up .qjoypad3/ ..."
    cp -r ${HOME}/.qjoypad3/ ${BACKUPDIR}

    echo "Backing up .local/share/applications/ ..."
    cp -r ${HOME}/.local/share/applications/ ${BACKUPDIR}
    echo "Backing up .local/share/fonts/ ..."
    cp -r ${HOME}/.local/share/fonts/ ${BACKUPDIR}


    # Files
    echo "Backing up .bash files..."
    cp ${HOME}/.bash* ${BACKUPDIR}
    echo "Backing up .start script..."
    cp ${HOME}/.start ${BACKUPDIR}
    echo "Backing up .gtk files..."
    cp ${HOME}/.gtk* ${BACKUPDIR}
    echo "Backing up .animatedBGstarter scripts..."
    cp ${HOME}/.animatedBGstarter*.sh ${BACKUPDIR}
    echo "Backing up .greetings.mp3 sound..."
    cp ${HOME}/.greetings.mp3 ${BACKUPDIR}
    echo "Backing up .vim files..."
    cp ${HOME}/.vim* ${BACKUPDIR}

    # Remove undesirables
    echo "Removing undesirables..."
    rm -rf ${BACKUPDIR}/.config/Atom
    rm -rf ${BACKUPDIR}/.config/Code
    rm -rf ${BACKUPDIR}/.config/aseprite
    rm -rf ${BACKUPDIR}/.config/blender
    rm -rf ${BACKUPDIR}/.config/discord
    rm -rf ${BACKUPDIR}/.config/SpiderOakONE
    rm -rf ${BACKUPDIR}/.config/streamio
    rm -rf ${BACKUPDIR}/.config/VirtualBox
    rm -rf ${BACKUPDIR}/.config/retroarch/cheats

    rm -rf ${BACKUPDIR}/.atom/.apm
    rm -rf ${BACKUPDIR}/.atom/blob-store
    rm -rf ${BACKUPDIR}/.atom/.gitignore
    rm -rf ${BACKUPDIR}/.atom/nohup.out
    rm -rf ${BACKUPDIR}/.atom/recovery
    rm -rf ${BACKUPDIR}/.atom/storage
    rm -rf ${BACKUPDIR}/.atom/.atom-socket-secret-abaddon-*
    rm -rf ${BACKUPDIR}/.atom/compile-cache
    rm -rf ${BACKUPDIR}/.atom/github.cson
    rm -rf ${BACKUPDIR}/.atom/.node-gyp
    rm -rf ${BACKUPDIR}/.atom/packages

    find ${BACKUPDIR} -name "*Cache*" -exec rm -rf $1 {} \;
    find ${BACKUPDIR} -name "*cache*" -exec rm -rf $1 {} \;
    find ${BACKUPDIR} -name "*.log" -exec rm -rf $1 {} \;
}
main $@;
