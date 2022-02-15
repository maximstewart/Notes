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
    mkdir -p ${BACKUPDIR}/.local/share/

    # Dirs
    echo "Backing up .config/ ..."
    backup_config

    echo "Backing up .local/share/applications/ ..."
        cp -r ${HOME}/.local/share/applications/ ${BACKUPDIR}/.local/share/
    echo "Backing up .local/share/fonts/ ..."
        cp -r ${HOME}/.local/share/fonts/ ${BACKUPDIR}/.local/share/
    echo "Backing up .local/share/ulauncher/ ..."
        cp -r ${HOME}/.local/share/ulauncher/ ${BACKUPDIR}/.local/share/

    echo "Backing up .atom/ ..."
        cp -r ${HOME}/.atom/ ${BACKUPDIR}
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
    echo "Backing up .qjoypad3/ ..."
        cp -r ${HOME}/.qjoypad3/ ${BACKUPDIR}


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
    echo "Backing up .face ..."
        cp -r ${HOME}/.face ${BACKUPDIR}
    echo "Backing up .sine.wav ..."
        cp -r ${HOME}/.sine.wav ${BACKUPDIR}
    echo "Backing up .gitconfig ..."
        cp -r ${HOME}/.gitconfig ${BACKUPDIR}
    echo "Backing up default.gpfl ..."
        cp -r ${HOME}/default.gpfl ${BACKUPDIR}
    echo "Backing up anime.txt ..."
        cp -r ${HOME}/anime.txt ${BACKUPDIR}
    echo "Backing up upcoming-movies.txt ..."
        cp -r ${HOME}/upcoming-movies.txt ${BACKUPDIR}
    echo "Backing up profile_backup.sh ..."
        cp -r ${HOME}/profile_backup.sh ${BACKUPDIR}


    # Remove undesirables
    echo "Removing undesirables..."
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


function backup_config() {
    python <<EOF
import os, shutil

def get_dir_size(start_path = "."):
    total_size = 0
    for path, dirs, files in os.walk(start_path):
        for f in files:
            fp = os.path.join(path, f)
            if os.path.isfile(fp):
                total_size += os.path.getsize(fp)

    return total_size


logging    = False
backup_dir = "${HOME}/Downloads/Linux-Profile/.config/"
path       = "${HOME}/.config"
files      = os.listdir(path)
tcount     = len(files)
pcount     = 0

for file in files:
    fpath = path + "/" + file
    fsize = 0

    if os.path.isdir(fpath):
        fsize = get_dir_size(fpath)
    else:
        fsize = os.path.getsize(fpath)

    if fsize <= 80000000: # less than equal to 80MB
        try:
            pcount += 1
            bpath = backup_dir + file

            if os.path.isdir(fpath):
                shutil.copytree(fpath, bpath, symlinks = False)
            else:
                shutil.copy2(fpath, bpath, follow_symlinks = False)

            if logging:
                print(f"Path: {fpath}")
                print(f"Directory size: {fsize}")
        except Exception as e:
            print(f"Couldn't Backup: {bpath}")


print(f"\nTotal Config File Count: {tcount}")
print(f"Processed Config File Count: {pcount}")
print(f"Backup Dir: {backup_dir}")
EOF
}

main $@;
