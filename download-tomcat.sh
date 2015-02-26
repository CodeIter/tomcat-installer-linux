#!/bin/bash

source ./tomcat-env-vars.sh

if [ ! -e $TOMCAT ]; then
    if [ ! -r $TOMCAT_ARCHIVE ]; then
        if [ -n "$(which curl)" ]; then
	        curl -O $TOMCAT_URL
	    elif [ -n "$(which wget)" ]; then
	        wget $TOMCAT_URL
	    fi
    fi

    if [ ! -r $TOMCAT_ARCHIVE ]; then
	    echo "Tomcat could not be downloaded." 1>&2
	    echo "Verify that eiter curl or wget is installed." 1>&2
	    echo "If they are, check your internet connection and try again." 1>&2
	    echo "You may also download $TOMCAT_ARCHIVE and place it in this folder." 1>&2
	    exit 1
    fi

    source ./tomcat-extract.sh --delete-archive
    
fi
