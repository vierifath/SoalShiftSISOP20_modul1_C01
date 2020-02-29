#!/bin/bash

for input in $@; do

savehour=$(date -r $input +"%H")


dcrpt=$(($savehour*(-1)+26))

hurufkapital=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
hurufkecil=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz


string="${input%.*}"

decript=$(echo $string | tr "${hurufkecil:0:26}" "${hurufkecil:${dcrpt}:26}" | tr "${hurufkapital:0:26}" "${hurufkapital:${dcrpt}:26}") 

mv $string.txt $decript.txt
done
