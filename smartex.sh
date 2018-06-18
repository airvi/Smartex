#!/bin/bash

cut -f 6,9 -d " " $1 | cut -c 2- | sort | uniq -c | awk '{print $2 ": " $3 ": " $1}' > temp.log

b=temp.log

if [[ $b =~ [^CONNECT] ]]
then
    echo "CONNECT:"
    grep "^CONNECT" $b | cut -f 2,3 -d " "
    echo
fi

if [[ $b =~ [^GET] ]]
then
    echo "GET:"
    grep "^GET" $b | cut -f 2,3 -d " "
    echo
fi

if [[ $b =~ [^HEAD] ]]
then
    echo "HEAD:"
    grep "^HEAD" $b | cut -f 2,3 -d " "
    echo
fi

if [[ $b =~ [^OPTIONS] ]]
then
    echo "OPTIONS:"
    grep "^OPTIONS" $b | cut -f 2,3 -d " "
    echo
fi

if [[ $b =~ [^POST] ]]
then
    echo "POST:"
    grep "^POST" $b | cut -f 2,3 -d " "
    echo
fi

if [[ $b =~ [^PUT] ]]
then
    echo "PUT:"
    grep "^PUT" $b | cut -f 2,3 -d " "
    echo
fi

if [[ $b =~ [^TRACE] ]]
then
    echo "TRACE:"
    grep "^TRACE" $b | cut -f 2,3 -d " "
    echo
fi

rm temp.log
