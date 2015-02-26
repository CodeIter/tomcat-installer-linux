#!/bin/bash

source ./tomcat-env-vars.sh

if [ $# -eq 0 ]
  then
    echo "No arguments supplied" 1>&2
    echo "HELP: tomcat-deploy.sh <war-file-path> " 1>&2
    exit 1;
fi

if [ ! -r $1 ]; then
    echo "$WAR_FILE is missing. Download it and run this again to deploy it." 1>&2
else
    cp $1 $TOMCAT_WEBAPPS
fi
