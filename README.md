<br />

# **Praktikum Modul 1_Probstat_5025211108**

> Nama : M. Dafian Zaki Akhdan\
> NRP : 5025211108

<br />

## No 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴 

| Responden   | X        | Y        |
|-------------|----------|----------|
| 1 | 78 | 100 |
| 2 | 75 | 95 |
| 3 | 67 | 70 |
| 4 | 77 | 90 |
| 5 | 70 | 90 |
| 6 | 72 | 90 |
| 7 | 78 | 89 |
| 8 | 74 | 90 |
| 9 | 77 | 100 |

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

- ### Poin A
    Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

    Pertama masukkan data kedalam variabel lalu kita cari selisih antar setiap data dan masukkan kedalam variabel `difference`. Selanjutnya kita menggunakan fungsi `sd()` dengan parameter `difference` untuk mencari nilai standar deviasi.

    ```R
    X <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
  Y <- c(100, 95, 70, 90, 90,   90, 89, 90, 100)
  
    sd(Y - X)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206914138-ab8cb5d0-153a-41af-a188-3b2e7128b9db.png)

- ### Poin B
    Carilah nilai t (p-value)!

    Dengan menggunakan fungsi `t.test()` dengan parameter data sebelum dan sesudah didapatkan p-value nya.

    ```R
    t.test(Y, X, paired = TRUE)
    ```

    Didapatkan hasil :

    ![image](https://user-images.githubusercontent.com/91055469/206914243-ec72a1d8-24bd-43a0-9234-88165db6efa8.png)

- ### Poin C
    Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

    Diketahui `p-value` adalah 0.00006003. Karena nilai nya lebih kacil dari `𝛼 = 0.05`, maka H0 nya ditolal. Sehingga ada pengaruh secara statistika dalam kadar saturasi ooksigen sebelum dan sesudah melakukan aktivitas A.


 <br />
 <br />

