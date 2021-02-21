#!/bin/bash

function main() {
OS=`lsb_release -i | awk '{ print $3 }'`

    if ! [[ "${OS}" == "Ubuntu" ]]; then
         echo "System isn't Ubuntu.... Exiting."
         exit;
    fi

    while [[ $ANSWER != 0 && $ANSWER != 1 &&
             $ANSWER != 2 && $ANSWER != 3 ]]; do
        clear; 
        echo "Which language would you like to download?"
        echo "(0) Python"
        echo "(1) Java"
        echo "(2) GTKMM & Glade"
        echo "(3) C++ & C"
        read -p "--> : " ANSWER;
    done

    case $ANSWER in
        0) installPython ;;
        1) installJava ;;
        2) installGTKMM ;;
        3) installCPPAndC ;;
        *) echo "Incorrect input...";;
    esac
}

installPython() {
    sudo apt-get install python;
}

installJava() {

    DISTRO=`lsb_release -c | awk '{ print $2 }'`

    sudo echo "" >> /etc/apt/sources.list
    sudo echo "" >> /etc/apt/sources.list
    sudo echo "#### Oracle Java (JDK) Installer PPA" >> /etc/apt/sources.list
    sudo echo "" >> /etc/apt/sources.list
    sudo echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu "${DISTRO}" main" >> /etc/apt/sources.list
    sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu "\"${DISTRO}"\" main" >> /etc/apt/sources.list

    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
    sudo apt-get update;
    sudo apt-get install oracle-java8-installer oracle-java8-set-default;
}

installGTKMM() {
    sudo apt-get install libgtkmm-3.0-dev libwebkit2gtk-3.0-dev glade;
}

installCPPAndC() {
    sudo apt-get install g++ libc-dev-bin;
}
main;