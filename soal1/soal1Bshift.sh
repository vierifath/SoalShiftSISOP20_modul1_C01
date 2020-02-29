#!/bin/bash

echo "SOAL 1B"
echo " "
echo " 2 State  yang  memiliki profit paling sedikit  :"
awk -F '	' '{if ($13 == "Central") i[$11]+=$21}
END {for(jawaban in i) 
        print i[jawaban]" "jawaban} 
' Sample-Superstore.tsv | sort -g | head -2


