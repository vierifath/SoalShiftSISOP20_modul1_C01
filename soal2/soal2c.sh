
#!/bin/bash

for input in $@; do

savehour=$(date -r $input +"%H")


hurufkapital="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
hurufkecil="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"

string="${input%.*}"

encript=$(echo $string | tr "${hurufkecil:0:26}${hurufkapital:0:26}" "${hurufkecil:${savehour}:26}${hurufkapital:${savehour}:26}")
mv $string.txt $encript.txt

done
