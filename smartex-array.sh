#!/bin/bash

a=access.log

cut -f 6,9 -d " " $a | cut -c 2- | sort | uniq -c | awk '{print $2 ": " $3 ": " $1}' > access2.log

b=access2.log

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

rm access2.log
