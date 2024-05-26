#!/bin/bash

if [ $# -lt 2 ]
then
    echo need at least 2 variables
    exit 1
fi

writefile=$1
writestr=$2

touch $writefile
echo $writestr > $writefile