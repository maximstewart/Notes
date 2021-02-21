#!/bin/bash

function createJavaData() {
    createMainClassData "${PACKAGE}";
    createControlClass "${PACKAGE}"
    createLoggerClassData "${PACKAGE}";
    createFXMLData "${PACKAGE}";
}

function createControlClass() {

read -d '' CONTROLCLASS << EOF
package com.${COMPANYNAME,,}.${PACKAGE,,};

import javafx.fxml.FXML;


public class Controller {
    // Classes

    // FXML Stuff

    // Generics


    @FXML void initialize() {

    }
}

EOF

   echo "${CONTROLCLASS}" > "${PACKAGE}"/src/Controller.java
}

function createMainClassData() {

read -d '' MAINCLASS << EOF
package com.${COMPANYNAME,,}.${PACKAGE,,};

import com.${COMPANYNAME,,}.${PACKAGE,,}.utils.${PACKAGE}Logger;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.stage.Stage;
import javafx.scene.Scene;
import javafx.scene.image.Image;

import java.util.logging.Level;
import java.io.IOException;


public class ${PACKAGE} extends Application {
    // Classes
    private ${PACKAGE}Logger ${PACKAGE,,}Logger = ${PACKAGE}Logger.getInstance();

    @Override public void start(Stage stage) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource(\"resources/${PACKAGE}.fxml\"));
            loader.setController(new Controller());
            loader.load();
            Scene scene = new Scene(loader.getRoot());
            scene.getStylesheets().add(\"/com/${COMPANYNAME}/${PACKAGE,,}/resources/stylesheet.css\");
            stage.setTitle(\"${PACKAGE}\");
            stage.setScene(scene);
        } catch (IOException startException) {
            String message = "\\\n${PACKAGE} Failed to launch...\\\n";
            System.out.println(message + startException);
            ${PACKAGE,,}Logger.insertToLog(Level.SEVERE, message, startException);
        }
        // stage.getIcons().add(new Image(${PACKAGE}.class.getResourceAsStream(\"resources/${PACKAGE}.png\")));
        stage.setResizable(true);
        stage.show();
    }
    public static void main(String[] args) { launch(args); }
}
EOF

   echo "${MAINCLASS}" > "${PACKAGE}"/src/"${PACKAGE}".java
}


function createLoggerClassData() {

read -d '' LOGGERCLASS << EOF
package com.${COMPANYNAME,,}.${PACKAGE,,}.utils;

import java.util.logging.Logger;
import java.util.logging.Level;
import java.util.logging.FileHandler;
import java.io.IOException;


public class ${PACKAGE}Logger {
    private static ${PACKAGE}Logger ${PACKAGE,,}Logger = new ${PACKAGE}Logger();
    private Logger logger = Logger.getLogger(${PACKAGE}Logger.class.getName());
    private boolean append = false;

    // Instance passer
    public static ${PACKAGE}Logger getInstance() { return ${PACKAGE,,}Logger; }

    // Init ${PACKAGE}Logger
    private ${PACKAGE}Logger() {
        try {
            FileHandler logFile = new FileHandler(\"${PACKAGE,,}_error.log\", append);
            logger.addHandler(logFile);
        } catch (IOException e) {
            insertToLog(Level.SEVERE, \"Can not access error log file...\", e);
            e.printStackTrace();
        }
    }

    public void insertToLog(Level severity, String message, Exception stackTrace) {
        logger.log(severity, message, stackTrace);
    }
}
EOF

   echo "${LOGGERCLASS}" > "${PACKAGE}"/src/utils/"${PACKAGE}"Logger.java
}

function createFXMLData() {
read -d '' FXMLDATA << EOF

EOF
   echo "${FXMLDATA}" > "${PACKAGE}"/com/"${COMPANYNAME,,}"/"${PACKAGE,,}"/resources/"${PACKAGE}".fxml
}
