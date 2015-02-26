#!/bin/bash

source ./tomcat-env-vars.sh

TOMCAT_VERSION=7.0.23
TOMCAT="apache-tomcat-"$TOMCAT_VERSION
TOMCAT_SHUTDOWN=$TOMCAT/bin/shutdown.sh

$TOMCAT_SHUTDOWN
rm -fr $TOMCAT
