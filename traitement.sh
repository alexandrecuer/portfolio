#!/bin/bash

github=$pwd
echo $github
cd %1

folder="${github}/images/%2/%4/%3"
prefix=%2_%3
echo $prefix
echo $folder

if [ -d $folder ]; then
    echo "I exist"
fi

