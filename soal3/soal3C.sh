#!/bin/bash
grep "location" wget.log > location.log
save arr < location.log
for ((i=0; i<28; i++)) do
        for ((j=0; j<=i; j++))do

if [ $i == $j ] then
continue



elif [ "${arr[$i]}" == "${arr[$j]}" ] then mv pdkt_kusuma_"$(($i+1))".jpg ./duplicate/duplicate_"$i".jpg
fi
done
done

for ((i=1; i<=2; i++)) do mv pdkt_kusuma_"$i".jpg ./kenangan/kenangan_"$i".jpg
