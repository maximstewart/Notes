#!/bin/bash

# . CONFIG.sh

# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set



PREMAKE_URL="https://github.com/premake/premake-core/releases/download/v5.0.0-beta2/premake-5.0.0-beta2-linux.tar.gz"
BAZELISK_URL="https://github.com/bazelbuild/bazelisk/releases/download/v1.20.0/bazelisk-linux-arm64"
BOOST_URL="https://archives.boost.io/release/1.82.0/source/boost_1_82_0.zip"

CHROOT_FOLDERS_PATH="/home/abaddon/Portable_Apps/chroot-envs"
DEV_BASHRC_FILE="/home/developer/.bashrc"
DEV_PASSWORD="password"
SCREEN_W=1600
SCREEN_H=900
X_PORT=10



function _prompt_chroot_env() {
    target=$(\ls -1 -d ./*/ | fzf --prompt "${1}")
    target=`sed 's|\.\/||g' <<< ${target}`
    chroot_env="${CHROOT_FOLDERS_PATH}/${target}"
    echo "${chroot_env}"
}

function _select_chroot_folder() {
    read -p 'Chroot Env: ' name
    name=`sed -e s'| |_|'g <<< "${name}"`

    if [[ -z "${name}" ]] || [[ "${name}" == "_" ]]; then
        echo "Need to give a proper Chroot Env value."
        return
    fi

    echo "${CHROOT_FOLDERS_PATH}/${name}-chroot"
}

function _get_x_port() {
    read -p 'X Server Port: ' name
    port=`sed -e s'| |10|'g <<< "${name}"`

    echo "${port}"
}

function _get_chroot_env() {
    if [ ! -z "${1}" -a "${1}" != " " ]; then
        chroot_env="${1}"
    else 
        chroot_env=$(_prompt_chroot_env "${2}")
    fi

    echo "${chroot_env}"
}

function _install_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install Base Software To Chroot Venv:")

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    libgl1 \
                                    libegl1 \
                                    libxcb-cursor0 \
                                    x11-xserver-utils \
                                    locales \
                                    sudo \
                                    less \
                                    nano \
                                    wget \
                                    curl \
                                    zip \
                                    unzip \
                                    7zip \
                                    procps \
                                    file \
                                    jq \
                                    fzf \
                                    parallel \
                                    xterm \
                                    build-essential \
                                    python3.11-venv \
                                    python3-dev \
                                    python3-setuptools \
                                    python3-pip \
                                    python3-wheel \
                                    python3-pip-whl \
                                    python3-setuptools-whl \
                                    git \
                                    htop \
                                    ranger
}

function install_cpp_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install C/CPP Software To Chroot Venv:")
    # Note: To get link paths and package names for Gtk4 for use in premake run the following...
    #       pkg-config gtk4 --cflags <-- premake includedirs { ... }
    #       pkg-config gtk4 --libs   <-- premake links { ... }

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    llvm \
                                    gcc \
                                    g++ \
                                    clang \
                                    ninja-build \
                                    meson \
                                    make \
                                    pkg-config \
                                    gdb \
                                    gdbserver \
                                    clang-14-doc \
                                    llvm-14-dev \
                                    libgtk-4-1 \
                                    libgtk-4-dev \
                                    libgtkmm-4.0-dev

    cat << EOF | sudo chroot --userspec=developer:developer --groups=sudo,developer "${chroot_env}"
    . /home/developer/.bashrc
    cd
    mkdir -p apps/premake
    cd apps/premake
    wget -O premake.tar.gz $PREMAKE_URL
    tar xvf *.tar.gz && rm *.tar.gz
    echo ${DEV_PASSWORD} | /bin/sudo -S ln -s `pwd`/premake5 /bin/premake
    cd ~/apps
    wget -O boost.zip ${BOOST_URL}
    unzip boost.zip
    wget -O bazelisk ${BAZELISK_URL}
    chmod +x bazelisk
    chown root:root bazelisk
    echo ${DEV_PASSWORD} | /bin/sudo -S mv bazelisk /bin
EOF

    _unbind_mounts "${chroot_env}"
}

function install_java_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install JAVA Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    gradle \
                                    maven

    cat << EOF | sudo chroot --userspec=developer:developer --groups=sudo,developer "${chroot_env}"
    . /home/developer/.bashrc
    cd
    curl -s "https://get.sdkman.io" | bash
    echo 'source ~/.sdkman/bin/sdkman-init.sh' >> ~/.bashrc
    . ~/.bashrc
    sdk install java
EOF

    _unbind_mounts "${chroot_env}"
}

function install_lua_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install JAVA Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    lua5.4 \
                                    lua-lgi

    _unbind_mounts "${chroot_env}"
}

function install_desktop_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install JAVA Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    openbox \
                                    obconf \
                                    lxappearance \
                                    xcompmgr \
                                    devilspie \
                                    nitrogen \
                                    engrampa \
                                    terminator \
                                    mousepad \
                                    ghex \
                                    galculator \
                                    gpick

    _unbind_mounts "${chroot_env}"
}

function install_gtk_dev_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install GTK+ Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    libcairo2-dev \
                                    libgtk-3-dev \
                                    libgirepository1.0-dev \
                                    libjpeg-dev \
                                    zlib1g-dev

    _unbind_mounts "${chroot_env}"
}

function install_qt_dev_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install QT Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/bin/apt-get install \
                                    --no-install-recommends \
                                    --no-install-suggests -y \
                                    qt6-base-dev \
                                    qt6-tools-dev \
                                    qt6-tools-dev-tools \
                                    qt6-qmltooling-plugins \
                                    libqt6opengl6-dev \
                                    qt6-qpa-plugins

    _unbind_mounts "${chroot_env}"
}

function install_homebrew_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install Homebrew Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    sudo chroot "${chroot_env}" /bin/su - developer -c "/bin/echo ${DEV_PASSWORD} | /bin/sudo -S /bin/bash -c $(curl -fsSL 'https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh')"
    sudo chroot --userspec=developer:developer --groups=sudo,developer "${chroot_env}" /bin/bash -c "/home/linuxbrew/.linuxbrew/bin/brew shellenv | xargs -n 2 >> ${DEV_BASHRC_FILE}"

    _unbind_mounts "${chroot_env}"
}

function install_pnpm_software() {
    chroot_env=$(_get_chroot_env "${1}" "Install PNPM Software To Chroot Venv:")

    _bind_mounts "${chroot_env}"

    cat << EOF | sudo chroot --userspec=developer:developer --groups=sudo,developer "${chroot_env}"
    . /home/developer/.bashrc
    mkdir -p ~/.nvm
    brew install nvm
    echo 'export NVM_DIR="/home/developer/.nvm"' >> ~/.bashrc
    echo '[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm' >> ~/.bashrc
    echo '[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.bashrc
    . ~/.bashrc
    nvm install node
    nvm use node
    npm install -g pnpm
    pnpm setup
EOF

    _unbind_mounts "${chroot_env}"
}


function _get_chroot_system_type() {
    PS3="Enter system type: "
    select system_type in "stable" "stretch" "sid"; do
        case $system_type in
            "stable")
                echo "${system_type}"
                break
            ;;
            "stretch")
                echo "${system_type}"
                break
            ;;
            "sid")
                echo "${system_type}"
                break
              ;;
            *) 
              ;;
          esac
    done
}

function _get_chroot_variant() {
    PS3="Enter variant type: "
    select variant in "minbase" "buildd" "fakechroot" "scratchbox"; do
        case $variant in
            "minbase")
                echo "${variant}"
                break
            ;;
            "buildd")
                echo "${variant}"
                break
            ;;
            "fakechroot")
                echo "${variant}"
                break
              ;;
            "scratchbox")
                echo "${variant}"
                break
              ;;
            *) 
              ;;
          esac
    done
}

function _make_chroot_folder() {
    read -p 'Chroot Env: ' name
    name=`sed -e s'| |_|'g <<< "${name}"`

    if [[ -z "${name}" ]] || [[ "${name}" == "_" ]]; then
        echo "Need to give a proper Chroot Env value."
        return
    fi

    path="${CHROOT_FOLDERS_PATH}/${name}-chroot"

    if [ ! -d "${path}" ]; then
        mkdir "${path}"
        echo "${path}"
    else
        _make_chroot_folder
    fi
}


function extract_compressed_chroot() {
    folder=$(_select_chroot_folder)
    echo "${folder}"
    7z x "cloneable-chroot.7z" -o"${folder}"
}

function make_chroot() {
    clear
    system_type=$(_get_chroot_system_type)
    clear
    variant=$(_get_chroot_variant)
    clear
    folder=$(_make_chroot_folder)
    clear

    if [ ! -d "${folder}" ]; then
        echo -e "\nChroot Env Path doesn't exists; aborting!"
        return 1
    fi

    sudo debootstrap --variant="${variant}" --arch amd64 "${system_type}" "${folder}" http://deb.debian.org/debian/

    _setup_chroot "${folder}"
}

function create_chroot() {
    make_chroot
}


function _setup_chroot() {
    chroot_env=$(_get_chroot_env "${1}" "Target Chroot Venv Setup:")

    cat << EOF | sudo chroot "${chroot_env}"
    . /root/.bashrc
    cd
    echo $'\nexport HOME=/root' >> ~/.bashrc
    echo "export LC_ALL=C" >> ~/.bashrc
    echo "export DISPLAY=${X_PORT}" >> ~/.bashrc
    echo "export XAUTHORITY=~/.Xauthority" >> ~/.bashrc
    echo $'export HOMEBREW_NO_ANALYTICS=1\n' >> ~/.bashrc
EOF

    _install_software "${chroot_env}"

    sudo chroot "${chroot_env}" /usr/sbin/useradd -m -p $(openssl passwd -1 "${DEV_PASSWORD}") -s /bin/bash developer
    sudo chroot "${chroot_env}" /usr/sbin/usermod -aG sudo developer

    cat << EOF | sudo chroot --userspec=developer:developer --groups=sudo,developer "${chroot_env}"
    export HOME=/home/developer
    echo $'\nexport HOME=/home/developer' >> ~/.bashrc  # Cannot use \$HOME because it's $HOME  instead of  /home/developer
    echo "export LC_ALL=C" >> ~/.bashrc
    echo "export DISPLAY=${X_PORT}" >> ~/.bashrc
    echo "export XAUTHORITY=~/.Xauthority" >> ~/.bashrc
    echo $'export HOMEBREW_NO_ANALYTICS=1\n' >> ~/.bashrc
    mkdir -p ~/projects
    mkdir -p ~/apps
    mkdir -p ~/includes
EOF
}


function load_chroot() {
    clear
    cd "${CHROOT_FOLDERS_PATH}"

    chroot_env=$(_get_chroot_env " " "Load Chroot Venv:")
    chroot_env=${chroot_env%/}  # If ends with slash remove
    X_PORT=$(_get_x_port)

    cd "${chroot_env}"

    sudo cp /etc/resolv.conf etc/resolv.conf
    sudo cp /etc/hosts etc/hosts
    sudo cp /etc/machine-id etc/machine-id

    sed -i "/DISPLAY=/c\export DISPLAY=:${X_PORT}" "${chroot_env}"/home/developer/.bashrc
    Xephyr -resizeable -screen "${SCREEN_W}"x"${SCREEN_H}" ":${X_PORT}" &
    XEPHYR_PID=$!

    _bind_mounts "${chroot_env}"

    sudo chroot . bash

    _unbind_mounts "${chroot_env}"

    kill -2 ${XEPHYR_PID}
}

function load_chroot_arch() {
    clear
    cd "${CHROOT_FOLDERS_PATH}"

    chroot_env=$(_get_chroot_env " " "Load Chroot Venv:")
    chroot_env=${chroot_env%/}  # If ends with slash remove
    X_PORT=$(_get_x_port)

    cd "${chroot_env}"

    sudo cp /etc/resolv.conf etc/resolv.conf
    sudo cp /etc/hosts etc/hosts
    sudo cp /etc/machine-id etc/machine-id

    sed -i "/DISPLAY=/c\export DISPLAY=:${X_PORT}" "${chroot_env}"/home/developer/.bashrc
    Xephyr -resizeable -screen "${SCREEN_W}"x"${SCREEN_H}" ":${X_PORT}" &
    XEPHYR_PID=$!

    sudo arch-chroot . bash
    # Note: Run in unshare mode. This will use unshare(1) to create a new mount
    # and user namespace, allowing regular users to create new system installations.
    # sudo arch-chroot -N . bash

    kill -2 ${XEPHYR_PID}
}

function load_chroot_sysd() {
    clear
    cd "${CHROOT_FOLDERS_PATH}"

    chroot_env=$(_get_chroot_env " " "Load Chroot Venv:")
    chroot_env=${chroot_env%/}  # If ends with slash remove
    X_PORT=$(_get_x_port)

    cd "${chroot_env}"

    sudo cp /etc/resolv.conf etc/resolv.conf
    sudo cp /etc/hosts etc/hosts
    sudo cp /etc/machine-id etc/machine-id

    sed -i "/DISPLAY=/c\export DISPLAY=:${X_PORT}" "${chroot_env}"/home/developer/.bashrc
    Xephyr -resizeable -screen "${SCREEN_W}"x"${SCREEN_H}" ":${X_PORT}" &
    XEPHYR_PID=$!

    sudo systemd-nspawn -D . /sbin/init

    kill -2 ${XEPHYR_PID}
}

function poweroff_chroot_sysd() {
    cd "${CHROOT_FOLDERS_PATH}"

    target=$(sudo machinectl list | awk '{print $1}' | head -n -2 | tail -n +2 | fzf --prompt "Stop:")
    clear
    echo "Stopping: ${target}"
    sudo machinectl poweroff "${target}"
    echo -e "Powered off Chroot Env: ${target}"
}

function kill_chroot_sysd() {
    cd "${CHROOT_FOLDERS_PATH}"

    target=$(sudo machinectl list | awk '{print $1}' | head -n -2 | tail -n +2 | fzf --prompt "Kill:")
    clear
    echo "Killing: ${target}"
    sudo machinectl kill "${target}"
    echo -e "Killed Chroot Env: ${target}"
}

function _bind_mounts() {
    _chroot_env=$(_get_chroot_env "${1}" "Bind Chroot Venv Mounts:")

    cd "${_chroot_env}"

    sudo mount -t proc /proc proc/
    # sudo mount -t proc none proc/
    sudo mount -t sysfs /sys sys/
    sudo mount --bind /dev dev/
    # sudo mount -o bind /dev dev/
    sudo mount -t devpts /dev/pts dev/pts/
}

function _unbind_mounts() {
    _chroot_env=$(_get_chroot_env "${1}" "Unbind Chroot Venv Mounts:")
    _chroot_env=${_chroot_env%/}  # If ends with slash remove

    cd "${_chroot_env}"

    sudo umount "${_chroot_env}/dev/pts/"
    sudo umount -lf "${_chroot_env}/dev/"
    sudo umount -lf "${_chroot_env}/proc/"
    sudo umount -lf "${_chroot_env}/sys/"

    cd ..
}

function delete_chroot() {
    cd "${CHROOT_FOLDERS_PATH}"

    chroot_env=$(_get_chroot_env " " "Delete Chroot Venv:")
    parentdir="$(dirname "${chroot_env}")"

    if [[ -d "${chroot_env}" && "${parentdir}" == "${CHROOT_FOLDERS_PATH}" ]]; then
        clear
        echo "Deleting: ${chroot_env}"
        sudo rm -rf "${chroot_env}"
        clear
        echo -e "Deleted Chroot Env: ${target}\nPath: ${chroot_env}"
    else
        echo -e "Path: ${chroot_env}\nis not a child path of\nParent: ${CHROOT_FOLDERS_PATH}"
    fi
}

function remove_chroot() {
    delete_chroot
}

function help() {
    clear
    declare -F | awk '{ print $3 }' | awk "/^[^_]/" | sort
}

function _menu() {
    command=`declare -F | awk '{ print $3 }' | awk "/^[^_]/" | sort | fzf --prompt "Command: "`
    $command
}


f_call=$1
shift

if [[ -z "${name}" ]]; then
    _menu
else
    $f_call "$@"
fi
