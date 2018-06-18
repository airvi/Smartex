#!/bin/bash

cut -f 6,9 -d " " $1 | cut -c 2- | sort | uniq -c | awk '{print $2 ": " $3 ": " $1}' > temp.log

b=temp.log

array=(CONNECT GET HEAD OPTIONS POST PUT TRACE)

for i in ${array[*]}
do
    if [[ $b =~ [^$i] ]]
    then
	echo "$i:"
	grep "^$i" $b | cut -f 2,3 -d " "
	echo
    fi
done

rm temp.log
