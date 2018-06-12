#!/bin/bash

a=access.log

cut -f 6,9 -d " " $a | cut -c 2- | sort | uniq -c | awk '{print $2 ": " $3 ": " $1}' | grep -v '"-"' > access2.log

b=access2.log

if [[ $b =~ [^GET] ]]
then
echo "GET:"
grep "^GET" $b | cut -f 2,3 -d " "
fi

if [[ $b =~ [^POST] ]]
then
echo "POST:"
grep "^POST" $b | cut -f 2,3 -d " "
fi

rm access2.log
