#! /bin/bash

pass1=$1 
i=1
while [ $i -eq 1 ];do
password=$(head /dev/urandom | tr -dc a-zA-Z0-9 | head -c 28 | head -n 1)
if [[ $password =~ [A-Z] ]]; then
if [[ $password =~ [0-9] ]]; then
if [[ $password =~ [a-z] ]]; then
i=0
fi
fi
fi
done

if [[ $1 =~ ^[A-Za-z]+$ ]]; then
echo  $password > /home/vierifath/modul1no2/"$pass1".txt
else
echo "Nama File Hanya boleh Alphabet"
fi
