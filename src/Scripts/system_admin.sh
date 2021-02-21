#
# By Maxim F. Stewart
# Contact: [1itdominator.com]
#
# Copyright 2013 Maxim F. Stewart
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#---------------------------------------------------------------------------------------#
#!/bin/bash

# . CONFIG.sh
# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set

show_menu() {
    clear
    pathLocal=""
    echo "__________________________________________________________________"
    echo "|                                                                |"
    echo "|<-   0. to upgrd your distrobution to a more current version. ->|"
    echo "|<-   1. to update pkg list and upgrade system pkgs.           ->|"
    echo "|<-   2. to install a pkg WITH Suggests and Recommends.        ->|"
    echo "|<-   3. to install a pkg WITHOUT Suggests and Recommends.     ->|"
    echo "|<-   4. to remove and purge a pkg.                            ->|"
    echo "|<-   5. to run a program as root.                             ->|"
    echo "|<-   6. Mozilla folder backup to Dropbox.                     ->|"
    echo "|<-                     Press 7 to exit.                       ->|"
    echo "|________________________________________________________________|"
    echo      "            |   Awesome Bash Script ver: 0.2.0   |   "
    echo      "            |____________________________________|   "
    echo ""
    read -p "         Enter one of the numbers indicated above -->  $: " NUMBER
    errorMsg
}

errorMsg() {
    if [ $NUMBER -eq 0 -o 1 -o 2 -o 3 -o 4 -o 5 -o 6 -o 7 ]; then
        main else
        clear
        echo "!!Remember!! Please enter a preselected number!"
        sleep 2
        clear
        show_menu
    fi
}

main() {
    show_menu

    case $NUMBER in
         [0]* ) sudo apt-get dist-upgrade;;
         [1]* ) sudo apt-get update && apt-get upgrade;;
         [2]* ) clear; read -p "Suggests and Recommends will be installed with selected Pkg. --> $: " PROG \
                sudo apt-get update && apt-get install $PROG -y ;;
         [3]* ) clear; read -p "Suggests and Recommends WILL NOT be installed with Pkg. --> $: " PROG \
                sudo apt-get update && apt-get --no-install-recommends --no-install-suggests install $PROG -y ;;
         [4]* ) clear; read -p "Enter the pkg name please. --> $: " PROG \
                sudo apt-get remove --purge $PROG && apt-get autoremove -y && apt-get autoclean -y ;;
         [5]* ) clear; read -p "What would you like to run? --> $: " PROG ; $PROG  &;;
         [6]* )
                if [ -d $HOME/$pathLocal/Documents/BackupsForSystem/mozilla.7z ]; then
                   rm -rf $HOME/$pathLocal/Documents/BackupsForSystem/mozilla.7z
                fi
                if [ -d $HOME/.mozilla  ]; then
                   7z a -t7z -mx=9 $HOME/$pathLocal/Documents/BackupsForSystem/mozilla.7z $HOME/.mozilla
                fi ;;
         [7]* ) clear && echo "
____           ______      __
|   \ \    /   |          |  |
|___|   \ /    |_____     |  |
|   |    |     |          |__|
|___\    |     |_____      __
                          |__| " ; sleep 2; clear; exit;
esac
}
main $@;
