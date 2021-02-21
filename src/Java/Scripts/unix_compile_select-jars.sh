#!/bin/bash
# -Xlint:unchecked
function main() {
    javac *.java
    rm ../bin/*.class
    mv *.class ../bin/
}
main;
