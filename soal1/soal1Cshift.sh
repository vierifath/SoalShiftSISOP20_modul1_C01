
#!/bin/bash

echo "SOAL 1C"
echo " "
echo "10 Produk yang memiliki keuntungan paling sedikit berdasarkan 2 state  :"
awk -F '	' '{{ if($13 == "Central" && $11 == "Texas" || $11 == "Illinois") i[$17]+=$21}}
END {for(jawaban in i) 
        print i[jawaban]" "jawaban} 
' Sample-Superstore.tsv | sort -g | head -10

