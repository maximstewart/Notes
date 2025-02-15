#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set



BASE_DIR=$(pwd)
MASTER_DIR="${BASE_DIR}/master"
WORKERS_DIR="${BASE_DIR}/workers"


function make_master() {
    mkdir -p "${MASTER_DIR}"
    cd "${MASTER_DIR}"

    python3 -m venv sandbox
    source sandbox/bin/activate

    python3 -m pip install --upgrade pip
    python3 -m pip install 'buildbot[bundle]'

    buildbot create-master master

    mv master/master.cfg.sample master/master.cfg

    buildbot start master

    deactivate
    cd ..
}

function make_worker() {
    mkdir -p "${WORKERS_DIR}"
    cd "${WORKERS_DIR}"

    if [ ! -d sandbox ]; then
        python3 -m venv sandbox
        source sandbox/bin/activate

        python3 -m pip install --upgrade pip
        python3 -m pip install 'buildbot-worker'
        # required for `runtests` build
        python3 -m pip install setuptools-trial

        deactivate
    fi

    source sandbox/bin/activate

    buildbot-worker create-worker "${1}" localhost "${1}" "${2}"
    buildbot-worker start "${1}"

    deactivate
    cd ../..
}

function start_master() {
    cd "${MASTER_DIR}"
    source sandbox/bin/activate

    buildbot start master

    deactivate
    cd ..
}

function stop_master() {
    cd "${MASTER_DIR}"
    source sandbox/bin/activate

    buildbot stop master

    deactivate
    cd ..
}

function restart_master() {
    stop_master
    start_master
}

function start_worker() {
    cd "${WORKERS_DIR}"
    source sandbox/bin/activate

    buildbot-worker start "${1}"

    deactivate
    cd ..
}

function stop_worker() {
    cd "${WORKERS_DIR}"
    source sandbox/bin/activate

    buildbot-worker stop "${1}"

    deactivate
    cd ..
}



function _menu() {
    command=`declare -F | awk '{ print $3 }' | awk "/^[^_]/" | sort | fzf --prompt "Command: "`
    $command
}


f_call=$1
shift

if [[ -z "${f_call}" ]]; then
    _menu
else
    $f_call "$@"
fi
