#!/bin/bash

a=access.log

cut -f 6,9 -d " " $a | cut -c 2- | sort | uniq -c | awk '{print $2 ": " $3 ": " $1}' | grep -v '"-"' > access2.log

b=access2.log

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

if [[ $b =~ [^OPENVAS] ]]
then
echo "OPENVAS:"
grep "^OPENVAS" $b | cut -f 2,3 -d " "
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

if [[ $b =~ [^PROPFIND] ]]
then
echo "PROPFIND:"
grep "^PROPFIND" $b | cut -f 2,3 -d " "
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

if [[ $b =~ [^TRACK] ]]
then
echo "TRACK:"
grep "^TRACK" $b | cut -f 2,3 -d " "
echo
fi

if [[ $b =~ [^USER] ]]
then
echo "USER:"
grep "^USER" $b | cut -f 2,3 -d " "
echo
fi


# rm access2.log
