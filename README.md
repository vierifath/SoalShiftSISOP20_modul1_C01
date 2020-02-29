# SoalShiftSISOP20_modul1_C01

### KELOMPOK        : C1
ANGGOTA         :

* Vieri Fath Ayuba     (05111840000153)
* Himawan Wijaya       (05111640000133)


### Jawaban Soal Shift Modul 1
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
**Penjelasan =**
```-F '        '```     = Memberi tahu separator nya adalah tab

```{ i[$13]+=$21}```    = Mengambil isi pada kolom ke 13 yaitu region, kemudian setiap region akan dihitung profitnya
``` END {for(jawaban in i) ```

```print jawaban" "i[jawaban]}``` = Outputnya berupa region yang memiliki profit paling sedikit

```Sample-Superstore.tsv``` = Nama file yang menjadi input

``` sort -nr ```        = Mengurutkan dari terbesar hingga terkecil

``` tail -1  ```        = Mengambil nilai dari yang terkecil sebanyak 1

![no1](https://user-images.githubusercontent.com/61290164/75608438-05155d00-5b32-11ea-8b1f-ac0105635d13.PNG)

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
' Sample-Superstore.tsv | sort -g | head -2
```

**Penjelasan =**
```-F '        '```     = Memberi tahu separator nya adalah tab

```if ($13 == "Central"```    = Mengambil isi pada kolom ke 13  berdasatkan region "Central"

```{ i[$11]+=$21}```    = Mengambil isi pada kolom ke 13 yaitu region, kemudian setiap region akan dihitung profitnya

``` END {for(jawaban in i) ```

```print jawaban" "i[jawaban]}``` = Outputnya berupa state yang memiliki profit paling sedikit berdasarkan region "Central"

```Sample-Superstore.tsv``` = Nama file yang menjadi input

``` sort -g ```        = Mengurutkan dari terkecil hingga terbesar

``` head -2  ```        = Mengambil nilai dari yang terkecil sebanyak 2

![Capture](https://user-images.githubusercontent.com/61290164/75608442-06df2080-5b32-11ea-971d-3fe0d199a2f3.PNG)



c. Tampilkan 10 produk (product name) yang memiliki keuntungan (profit) paling
sedikit berdasarkan 2 negara bagian (state) hasil poin b

```
##!/bin/bash

echo "SOAL 1C"
echo " "
echo "10 Produk yang memiliki keuntungan paling sedikit berdasarkan 2 state  :"
awk -F '        ' '{{ if($13 == "Central" && $11 == "Texas" || $11 == "Illinois") i[$17]+=$21}}
END {for(jawaban in i) 
        print i[jawaban]" "jawaban} 
' Sample-Superstore.tsv | sort -g | head -10

```

**Penjelasan =**

```-F '        '```     = Memberi tahu separator nya adalah tab

```if ($13 == "Central"```    = Mengambil isi pada kolom ke 13  berdasatkan region "Centra"

```{ i[$11]+=$21}```    = Mengambil isi pada kolom ke 17 yaitu produk, kemudian setiap region akan dihitung profitnya

``` END {for(jawaban in i) ```

```print jawaban" "i[jawaban]}``` = Outputnya berupa 10 produk yang memiliki profit paling sedikit berdasarkan region "Central" dan 2 state "Texas" dan "Illinois"

```Sample-Superstore.tsv``` = Nama file yang menjadi input

``` sort -g ```        = Mengurutkan dari terkecil hingga terbesar

``` head -10  ```        = Mengambil nilai dari yang terkecil sebanyak 10

![3](https://user-images.githubusercontent.com/61290164/75608441-06468a00-5b32-11ea-88aa-a7c56a87d8d1.PNG)

**Jawaban Soal Shift Modul 2**


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

```
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
```
**Penjelasan      =***
```i=1``` = menginisialisasi perulangan 

```while [ $i -eq 1 ]; do``` = melakukan perulangan

```password=$(head /dev/urandom | tr -dc a-zA-Z0-9 | head -c 28 | head -n 1)``` = membuat password secara acak (alfanumeric) sebanyak 28 karakter

```if [[ $password =~ [A-Z] ]];``` = kondisi untuk mengecek huruf kapital (A-Z) telah muncul

```if [[ $password =~ [0-9] ]];``` = kondisi untuk mengecek angka (0-9) telah muncul

```if [[ $password =~ [a-z] ]];``` = kondisi untuk mengecek huruf kecil (a-z) telah muncul


```if [[ $1 =~ ^[A-Za-z]+$ ]]; then``` = kondisi dimana nama file hanya berupa alfabet sesuai dengan perintah soal
```echo  $password > /home/vierifath/modul1no2/"$pass1".txt``` = menyimpan dalam .txt yang telah dibuat

```else```
```echo "Nama File Hanya boleh Alphabet"``` = jika tidak memenuhi syarat, akan muncul text : " Nama file hanya boleh alphabet"

![2](https://user-images.githubusercontent.com/61290164/75608469-3d1ca000-5b32-11ea-966b-2ed5a08fe97e.PNG)

![Capture](https://user-images.githubusercontent.com/61290164/75608470-3ee66380-5b32-11ea-8bb0-13f5fd65ee33.PNG)

(c) Kemudian supaya file .txt tersebut tidak mudah diketahui maka nama filenya akan di
enkripsi dengan menggunakan konversi huruf (string manipulation) yang disesuaikan
dengan jam(0-23) dibuatnya file tersebut dengan program terpisah dengan (misal:
password.txt dibuat pada jam 01.28 maka namanya berubah menjadi qbttxpse.txt
dengan perintah ‘bash soal2_enkripsi.sh password.txt’. Karena p adalah huruf ke 16 dan
file dibuat pada jam 1 maka 16+1=17 dan huruf ke 17 adalah q dan begitu pula
seterusnya. Apabila melebihi z, akan kembali ke a, contoh: huruf w dengan jam 5.28,
maka akan menjadi huruf b

```
#!/bin/bash

for input in $@; do

savehour=$(date -r $input +"%H")


hurufkapital="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
hurufkecil="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"

string="${input%.*}"

encript=$(echo $string | tr "${hurufkecil:0:26}${hurufkapital:0:26}""${hurufkecil:${savehour}:26}${hurufkapital:${savehour}:26}")

mv $string.txt $encript.txt

done
```

**Penjelasan  =**

```savehour=$(date -r $input +"%H")``` = menyimpan data jam file pada variabel savehour

```
hurufkapital="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
hurufkecil="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
```
mendeklarasi variabel huruf kapital dan huruf kecil

```string="${input%.*}"``` = mengambil character tanpa titik (.)

```encript=$(echo $string | tr "${hurufkecil:0:26}${hurufkapital:0:26}"${hurufkecil:${savehour}:26}${hurufkapital:${savehour}:26}")```
melakukan shift pada karakter menggunakan tr sesuai jam yang tersimpan

```mv $string.txt $encript.txt```
mengganti nama dengan nama file yang baru 

![fix1](https://user-images.githubusercontent.com/61290164/75608471-3f7efa00-5b32-11ea-855c-199710796332.PNG)


(d) jangan lupa untuk membuat dekripsinya supaya
nama file bisa kembali.
```
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
```

![fix2](https://user-images.githubusercontent.com/61290164/75608473-40179080-5b32-11ea-9583-d90e358ce8e3.PNG)

**Penjelasan = **

```savehour=$(date -r $input +"%H")``` = menyimpan data jam file pada variabel savehour


```dcrpt=$(($savehour*(-1)+26))``` = melakukan shift sebanyak alphabet (26) dikurangi banyaknya shift sebelumnya

```
hurufkapital="ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ"
hurufkecil="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
```
= mendeklarasi variabel huruf kapital dan huruf kecil

```string="${input%.*}"``` = mengambil character tanpa titik (.)

```decript=$(echo $string | tr "${hurufkecil:0:26}" "${hurufkecil:${dcrpt}:26}" | tr "${hurufkapital:0:26}" "${hurufkapital:${dcrpt}:26}") ``` 
= melakukan shift pada karakter menggunakan tr sesuai jam yang tersimpan

```mv $string.txt $decript.txt```
mengganti nama dengan nama file yang baru (decript.txt)



**Jawaban Soal Shift Modul 3**


[a] Maka dari
itu, kalian mencoba membuat script untuk mendownload 28 gambar dari
"https://loremflickr.com/320/240/cat" menggunakan command wget dan menyimpan file
dengan nama "pdkt_kusuma_NO" (contoh: pdkt_kusuma_1, pdkt_kusuma_2,
pdkt_kusuma_3) serta jangan lupa untuk menyimpan log messages wget kedalam
sebuah file "wget.log". Karena kalian gak suka ribet, kalian membuat penjadwalan untuk menjalankan script download gambar tersebut. Namun, script download tersebut hanya
berjalan
```
for ((i=1 ; $i<=28 ; i++))
do

wget "https://loremflickr.com/320/240/cat" -a "/home/vierifath/modul1no3/wget.log" -O "/home/vierifath/modul1no3/pdkt_kusuma_$i"

done
```
**Penjelasan =**
Membuay perulangan dari 1 hingga 28 sehingga kita dapa mendownload sebanyak 28 gambar
```wget "https://loremflickr.com/320/240/cat``` = Download foto dari ```URL https://loremflickr.com/320/240/cat```

```-O "/home/vierifath/modul1no3/pdkt_kusuma_$i``` = Mengganti nama file dengan ```pdkt_kusuma_$i```

```-a "/home/vierifath/modul1no3/wget.log"``` = Menyimpan log messages

![Capture](https://user-images.githubusercontent.com/61290164/75608736-ed8ba380-5b34-11ea-821e-2b7f4a668bfb.PNG)


[b] setiap 8 jam dimulai dari jam 6.05 setiap hari kecuali hari Sabtu Karena
gambar yang didownload dari link tersebut bersifat random, maka ada kemungkinan
gambar yang terdownload itu identik. Supaya gambar yang identik tidak dikira Kusuma
sebagai spam, maka diperlukan sebuah script untuk memindahkan salah satu gambar
identik. Setelah memilah gambar yang identik, maka dihasilkan gambar yang berbeda
antara satu dengan yang lain. Gambar yang berbeda tersebut, akan kalian kirim ke
Kusuma supaya hatinya kembali ceria. Setelah semua gambar telah dikirim, kalian akan
selalu menghibur Kusuma, jadi gambar yang telah terkirim tadi akan kalian simpan
kedalam folder /kenangan dan kalian bisa mendownload gambar baru lagi.

```
5 6-23/8 * * 1-5,7 /home/vierifath/modul1no3/soal3Ashift.sh
```
**Penjelasan =**
Dengan membuat crontab dengan format diatur jamnya yaitu jam 6.05 hingga 23 dengan interval 8 jam. Kemudian didalam soal diperintahkan untuk melakukannya setiap hari kecuali hari sabtu, maka diaturlah 1-5,7 sehingga ketika hari sabtu crontab tidak berjalan.

[c] Membuat sebuah script untuk mengidentifikasi gambar yang identik dari keseluruhan gambar yang terdownload tadi. Bila terindikasi sebagai gambar yang identik, maka sisakan 1 gambar dan pindahkan sisa file identik tersebut ke dalam folder ./duplicate dengan format filename "duplicate_nomor" (contoh : duplicate_200, duplicate_201). Setelah itu lakukan pemindahan semua gambar yang tersisa kedalam folder ./kenangan dengan format filename "kenangan_nomor" (contoh: kenangan_252, kenangan_253). Setelah tidak ada gambar di ​current directory​, maka lakukan backup seluruh log menjadi ekstensi ".log.bak"

```
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

for ((i=1; i<=28; i++)) do mv pdkt_kusuma_"$i".jpg ./kenangan/kenangan_"$i".jpg
```
**Penjelasan    =**
1) Mendapatkan location dari wget.log dan masukkan ke location.log grep location wget.log >> location.log
2) Membuat directory duplicate untuk foto yang sama dan unruk foto yang tidak sama
3)
```
for ((i=0; i<28; i++)) do
        for ((j=0; j<=i; j++))do

if [ $i == $j ] then
continue
```
Membandingkan foto identik atau tidak
4)rename file ke ./kenangan/kenangan_"$i".jpg


