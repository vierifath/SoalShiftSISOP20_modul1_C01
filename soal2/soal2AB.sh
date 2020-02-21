#! /bin/bash
pass1=$1 
password=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c28 | head -n 1)


echo $password > "$pass1".txt
