#!/bin/bash

echo "SOAL 1A"
echo " "
echo "Region yang  memiliki profit paling sedikit  :"
awk -F '	' '{ i[$13]+=$21}
END {for(jawaban in i) 
	print jawaban" "i[jawaban]}
' Sample-Superstore.tsv | sort -nr | tail -1


