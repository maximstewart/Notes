#!/bin/bash

function createScriptData() {

read -d '' COMPILESCRIPT << EOF
#!/bin/bash
# -Xlint:unchecked
function main() {
    javac *.java utils/*.java
    rm ../com/${COMPANYNAME,,}/${PACKAGE,,}/*.class
    rm ../com/${COMPANYNAME,,}/${PACKAGE,,}/utils/*.class

    mv *.class ../com/${COMPANYNAME,,}/${PACKAGE,,}/
    mv utils/*.class ../com/${COMPANYNAME,,}/${PACKAGE,,}/utils/
}
main;
EOF

read -d '' BUILDJARSCRIPT << EOF
#!/bin/bash

function main() {
    jar cvfm ${PACKAGE}.jar manifest.txt com/${COMPANYNAME,,}/${PACKAGE,,}/*.class \
                                         com/${COMPANYNAME,,}/${PACKAGE,,}/utils/*.class \
                                         com/${COMPANYNAME,,}/${PACKAGE,,}/resources
    chmod +x ${PACKAGE}.jar
    mv ${PACKAGE}.jar bin/
}
main;
EOF

    echo "${COMPILESCRIPT}" > "${PACKAGE}"/src/unix_compile.sh
    echo "${BUILDJARSCRIPT}" > "${PACKAGE}"/buildJar.sh
}

function createManifest() {

read -d '' MANIFESTDATA <<- EOF

Class-Path:
SplashScreen-Image: com/${COMPANYNAME,,}/${PACKAGE,,}/resources/${PACKAGE}Splash.jpg
Main-Class: com.${COMPANYNAME,,}.${PACKAGE,,}.${PACKAGE}

EOF

    echo "${MANIFESTDATA}" > "${PACKAGE}"/manifest.txt
}
