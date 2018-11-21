#!/usr/bin/env bash

FILE=$1
LINKNAME=$2
# ln -s source_file myfile
# source_file create the symbolic link
# myfile is the name of the symbolic link

#if [ "$#" -l 3 ]; then
#    echo "Command:ln -s Name_of_File Name_of_Link_to_File"
#else
ln -s $FILE $LINKNAME
