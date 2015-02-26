#!/bin/bash

source ./tomcat-env-vars.sh

tar -zxf $TOMCAT_ARCHIVE

if [ $1 = "--delete-archive" ]
  then
    rm $TOMCAT_ARCHIVE
fi
