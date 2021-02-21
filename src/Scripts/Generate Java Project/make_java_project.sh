#!/bin/bash

. insert_script_data.sh
. insert_base_Java_data.sh

function main() {
    clear;
    echo "Name of package with proper Upercase convention...";
    read -p "-> : " PACKAGE;

    echo -e "\n\nName of your company or group to setup Jar structure...\n" \
                       "Usage Example:   com/<companyORgroup>/${PACKAGE,,}" \
                                       "Note: This will be made lowercase."
    read -p "-> : " COMPANYNAME;

    echo -e "\n\nMaking directories...";
    sleep 1;
    makeDirs "${PACKAGE}" "${COMPANYNAME}";
    echo "Making source files...";
    sleep 1;
    makeSrcFiles "${PACKAGE}" "${COMPANYNAME}";
    echo "Inserting script data to compile and build scripts...";
    sleep 1;
    createScriptData "${PACKAGE}" "${COMPANYNAME}";
    echo "Creating basic Manifest file for Jar building...";
    sleep 1;
    createManifest "${PACKAGE}" "${COMPANYNAME}";
    echo "Inserting basic Java data to ${PACKAGE} and its ${PACKAGE,,}Logger ...";
    sleep 1;
    createJavaData "${PACKAGE}" "${COMPANYNAME}";
    echo -e "\t\t\nFinished!\n";
    openOrExit "${PACKAGE}";
}

function makeDirs() {
    mkdir -p "${PACKAGE}"/bin/resources/ "${PACKAGE}"/src/ "${PACKAGE}"/src/utils/ \
              "${PACKAGE}"/com/"${COMPANYNAME,,}"/"${PACKAGE,,}"/resources \
              "${PACKAGE}"/com/"${COMPANYNAME,,}"/"${PACKAGE,,}"/utils
}

function makeSrcFiles() {
    touch "${PACKAGE}"/com/"${COMPANYNAME,,}"/"${PACKAGE,,}"/resources/"${PACKAGE}".fxml \
          "${PACKAGE}"/com/"${COMPANYNAME,,}"/"${PACKAGE,,}"/resources/stylesheet.css \
          "${PACKAGE}"/src/unix_compile.sh "${PACKAGE}"/buildJar.sh "${PACKAGE}"/manifest.txt \
          "${PACKAGE}"/src/"${PACKAGE}".java "${PACKAGE}"/src/utils/"${PACKAGE}"Logger.java \
                                               "${PACKAGE}"/src/Controller.java

    # Make scripts runnable
    chmod 744 "${PACKAGE}"/src/unix_compile.sh
    chmod 744 "${PACKAGE}"/buildJar.sh
}

function openOrExit() {
    echo -e "Open ${PACKAGE}/src/Controller.java\n"
    read -p "-->(Yy/Nn): " ANS;
    case "${ANS,,}" in
     y ) atom "${PACKAGE}"/src/Controller.java & ;;
     n ) exit ;;
     * ) ;;
    esac
}
main;
