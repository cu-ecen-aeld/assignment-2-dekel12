#!/bin/bash

if [ $# -lt 2 ]
then
    echo need at least 2 variables
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d $filesdir ]
then
    echo $filesdir is not a valid directory
    exit 1
fi

lastPwd=$(pwd)
cd $filesdir
numberOfFiles=$(ls | wc -w)
numberOfMatches=$(grep -r $searchstr | wc -l)

echo The number of files are $numberOfFiles and the number of matching lines are $numberOfMatches