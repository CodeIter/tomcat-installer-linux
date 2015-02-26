#!/bin/bash

export TOMCAT_VERSION="8.0.20"
export TOMCAT_VERSION_NUMBER="8"
export TOMCAT="apache-tomcat-"$TOMCAT_VERSION
export TOMCAT_ARCHIVE=$TOMCAT".tar.gz"
export TOMCAT_URL="http://mirrors.ibiblio.org/apache/tomcat/tomcat-"$TOMCAT_VERSION_NUMBER"/v"$TOMCAT_VERSION"/bin/"$TOMCAT_ARCHIVE

export TOMCAT_START=$TOMCAT"/bin/startup.sh"
export TOMCAT_SHUTDOWN=$TOMCAT"/bin/shutdown.sh"

export TOMCAT_WEBAPPS=$TOMCAT"/webapps"
export TOMCAT_CONFIG=$TOMCAT"/conf/server.xml"
export $WAR_FILE=""
