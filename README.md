# SoalShiftSISOP20_modul1_C01

Jawaban Soal Shift Modul 1
1) Whits adalah seorang mahasiswa teknik informatika. Dia mendapatkan tugas praktikum
untuk membuat laporan berdasarkan data yang ada pada file “ Sample-Superstore.tsv” .
Namun dia tidak dapat menyelesaikan tugas tersebut. Laporan yang diminta berupa :
a. Tentukan wilayah bagian (region) mana yang memiliki keuntungan (profit) paling
sedikit
Jawaban = 
```
#!/bin/bash

echo "SOAL 1A"
echo " "
echo "Region yang  memiliki profit paling sedikit  :"
awk -F '        ' '{ i[$13]+=$21}
END {for(jawaban in i) 
        print jawaban" "i[jawaban]}
' Sample-Superstore.tsv | sort -nr | tail -1
```


b. Tampilkan 2 negara bagian (state) yang memiliki keuntungan (profit) paling
sedikit berdasarkan hasil poin a

```
#!/bin/bash

echo "SOAL 1B"
echo " "
echo " 2 State  yang  memiliki profit paling sedikit  :"
awk -F '        ' '{if ($13 == "Central") i[$11]+=$21}
END {for(jawaban in i) 
        print i[jawaban]" "jawaban} 
' Sample-Superstore.tsv | sort -nr | tail -2
```


c. Tampilkan 10 produk (product name) yang memiliki keuntungan (profit) paling
sedikit berdasarkan 2 negara bagian (state) hasil poin b

```
##!/bin/bash

echo "SOAL 1C"
echo " "
echo "10 Produk yang memiliki keuntungan paling sedikit berdasarkan 2 state  :"
awk -F '        ' '{{ if($13 == "Central" && $11 == "Texas" || $11 == "Illinoi$
END {for(jawaban in i) 
        print i[jawaban]" "jawaban} 
' Sample-Superstore.tsv | sort -nr | tail -10

```

JAWABAN : 

Jawaban Soal Shift Modul 2
2) Pada suatu siang, laptop Randolf dan Afairuzr dibajak oleh seseorang dan kehilangan
data-data penting. Untuk mencegah kejadian yang sama terulang kembali mereka
meminta bantuan kepada Whits karena dia adalah seorang yang punya banyak ide.
Whits memikirkan sebuah ide namun dia meminta bantuan kalian kembali agar ide
tersebut cepat diselesaikan. Idenya adalah kalian 
(a) membuat sebuah script bash yang
dapat menghasilkan password secara acak sebanyak 28 karakter yang terdapat huruf
besar, huruf kecil, dan angka. 



(b) Password acak tersebut disimpan pada file berekstensi
.txt dengan nama berdasarkan argumen yang diinputkan dan HANYA berupa alphabet.



(c) Kemudian supaya file .txt tersebut tidak mudah diketahui maka nama filenya akan di
enkripsi dengan menggunakan konversi huruf (string manipulation) yang disesuaikan
dengan jam(0-23) dibuatnya file tersebut dengan program terpisah dengan (misal:
password.txt dibuat pada jam 01.28 maka namanya berubah menjadi qbttxpse.txt
dengan perintah ‘bash soal2_enkripsi.sh password.txt’. Karena p adalah huruf ke 16 dan
file dibuat pada jam 1 maka 16+1=17 dan huruf ke 17 adalah q dan begitu pula
seterusnya. Apabila melebihi z, akan kembali ke a, contoh: huruf w dengan jam 5.28,
maka akan menjadi huruf b.) dan 


(d) jangan lupa untuk membuat dekripsinya supaya
nama file bisa kembali.





Nama : Vieri Fath Ayuba (05111840000153)

