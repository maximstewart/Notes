#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


function main() {
    SCRIPTPATH="$( cd "$(dirname "")" >/dev/null 2>&1 ; pwd -P )"
    cd "${SCRIPTPATH}"
    echo "Working Dir: " $(pwd)

    shopt -s nullglob
    for d in /sys/kernel/iommu_groups/*/devices/*; do
        n=${d#*/iommu_groups/*}; n=${n%%/*}
        printf 'IOMMU Group %s ' "$n"
        lspci -nns "${d##*/}"
    done;
}
main $@;
