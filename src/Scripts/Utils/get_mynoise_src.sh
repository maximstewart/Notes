#!/bin/bash

# . CONFIG.sh
# set -o xtrace       ## To debug scripts
# set -o errexit      ## To exit on error
# set -o errunset     ## To exit if a variable is referenced but not set


main() {
    pre="http://cdn.mynoise.net/Data/";
    src=$(zenity --entry --title="Grab Sounds" --text "What is the MyNoise CDN Data Directory?");
    mkdir "${src}"

    wget "${pre}""${src}"/1a.ogg -P "${src}"
    wget "${pre}""${src}"/2a.ogg -P "${src}"
    wget "${pre}""${src}"/3a.ogg -P "${src}"
    wget "${pre}""${src}"/4a.ogg -P "${src}"
    wget "${pre}""${src}"/5a.ogg -P "${src}"
    wget "${pre}""${src}"/6a.ogg -P "${src}"
    wget "${pre}""${src}"/7a.ogg -P "${src}"
    wget "${pre}""${src}"/8a.ogg -P "${src}"
    wget "${pre}""${src}"/9a.ogg -P "${src}"

    wget "${pre}""${src}"/1b.ogg -P "${src}"
    wget "${pre}""${src}"/2b.ogg -P "${src}"
    wget "${pre}""${src}"/3b.ogg -P "${src}"
    wget "${pre}""${src}"/4b.ogg -P "${src}"
    wget "${pre}""${src}"/5b.ogg -P "${src}"
    wget "${pre}""${src}"/6b.ogg -P "${src}"
    wget "${pre}""${src}"/7b.ogg -P "${src}"
    wget "${pre}""${src}"/8b.ogg -P "${src}"
    wget "${pre}""${src}"/9b.ogg -P "${src}"
}
main $@;
