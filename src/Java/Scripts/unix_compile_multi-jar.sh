#!/bin/bash

function main() {
    javac -cp .:../bin/resources/jars/* *.java
    rm ../bin/*.class
    mv *.class ../bin/
}
main;
