#
# By Maxim F. Stewart
# Contact: [1itdominator@gmail.com]
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


main_menu() {
    clear
    echo "_________________________________________________________________"
    echo "|                                                               |"
    echo "|<--         0 -- Extract md5 hashes                         -->|"
    echo "|<--         1 -- Extract valid MySQL-Old hashes             -->|"
    echo "|<--         2 -- Extract blowfish hashes                    -->|"
    echo "|<--         3 -- Extract Joomla hashes                      -->|"
    echo "|<--         4 -- Extract VBulletin hashes                   -->|"
    echo "|<--         5 -- Extraxt phpBB3-MD5                         -->|"
    echo "|<--         6 -- Extract Wordpress-MD5                      -->|"
    echo "|<--         7 -- Extract Drupal 7                           -->|"
    echo "|<--         8 -- Extract old Unix-md5                       -->|"
    echo "|<--         9 -- Extract md5-apr1                           -->|"
    echo "|<--        10 -- Extract sha512crypt, SHA512(Unix)          -->|"
    echo "|<--        11 -- Extract e-mails from text files            -->|"
    echo "|<--        12 -- Extract HTTPS, FTP and other URL Formats   -->|"
    echo "|<--        13 -- EXIT Quick Hash Extractor                  -->|"
    echo "|_______________________________________________________________|"
    echo      "        |   Quick Hash Extractor ver: 0.2.0  |   "
    echo      "        |____________________________________|   "
    echo "                                                                 "
    read -p "         Enter one of the numbers indicated above -->  $: " NUMBER
    errorMsg
}

main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)
    case $NUMBER in
        [0]* ) egrep -oE '(^|[^a-fA-F0-9])[a-fA-F0-9]{32}([^a-fA-F0-9]|\$)' *.txt | egrep -o '[a-fA-F0-9]{32}' > md5-hashes.txt ;;
        [1]* ) grep -e "[0-7][0-9a-f]\{7\}[0-7][0-9a-f]\{7\}" *.txt > mysql-old-hashes.txt ;;
        [2]* ) grep -e "\$2a\\$\08\\$\(.\)\{75\}" *.txt > blowfish-hashes.txt ;;
        [3]* ) egrep -o "([0-9a-zA-Z]{32}):(\w{16,32})" *.txt > joomla.txt ;;
        [4]* ) egrep -o "([0-9a-zA-Z]{32}):(\S{3,32})" *.txt > vbulletin.txt ;;
        [5]* ) egrep -o '\$H\$\S{31}' *.txt > phpBB3-md5.txt ;;
        [6]* ) egrep -o '\$P\$\S{31}' *.txt > wordpress-md5.txt ;;
        [7]* ) egrep -o '\$S\$\S{52}' *.txt > drupal-7.txt ;;
        [8]* ) egrep -o '\$1\$\w{8}\S{22}' *.txt > md5-unix-old.txt ;;
        [9]* ) egrep -o '\$apr1\$\w{8}\S{22}' *.txt > md5-apr1.txt ;;
        [10]* ) egrep -o '\$6\$\w{8}\S{86}' *.txt > sha512crypt.txt ;;
        [11]* ) grep -E -o "\b[a-zA-Z0-9.#?$*_-]+@[a-zA-Z0-9.#?$*_-]+\.[a-zA-Z0-9.-]+\b" *.txt > e-mails.txt ;;
        [12]* ) grep -E '(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]' *.txt > urls.txt ;;
        [13]* ) clear && echo "
___           ______      __
|   \ \    /   |          |  |
|___|   \ /    |_____     |  |
|   |    |     |          |__|
|___\    |     |_____      __
                          |__|" ; sleep 2; clear; exit
    esac ;

        sleep 2 &&  clear && main_menu
}

errorMsg() {
    if [ $NUMBER -eq 0 -o 1 -o 2 -o 3 -o 4 -o 5 -o 6 -o 7 -o 8 -o 9 -o 10 -o 11 -o 12 -o 13 ]; then
        main else
        clear
        echo "!!Remember!! Please enter a preselected number!"
        sleep 2
        clear
        main_menu
    fi
}

main_menu
