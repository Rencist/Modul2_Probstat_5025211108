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

## No 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer.

- ### Poin A
    Apakah Anda setuju dengan klaim tersebut?

    Saya setuju, dengan rata-rata 23500 dari sample acak dengan sd 3900 km maka sangat mungkin bahwa klaim tersebut valid. Grafik persebaran data dari distribusi normal akan lebih pekat di daerah lebih dari 20000 km dengan asumsi nilai tengah grafik adalah nilai rata-rata dari sampel acak yang didapat.

- ### Poin B
    Jelaskan maksud dari output yang dihasilkan!

    Pertama kita gunakan library sesuai modul yaitu `library(BSDA)`. Selanjutnya kita menggunakan fungsi `tsum.test()` dengan parameter mean, s, dan n.

    ```R
    install.packages("BSDA")
    library(BSDA)

    tsum.test(mean.x = 23500, s.x = 3900, n.x = 100)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206915078-ea1e65c4-71d5-47b6-b383-566a23012d56.png)

    Maka dengan interval kepercayaan 95% rata-rata jarak tempuh mobul per tahun berada pada interval 22726.16 km dan 24273.84 km.

- ### Poin C
    Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

    Nilai probabilitas lebih kecil dibanding `𝛼 = 0.05` maka H0 nya ditolak, sehingga didapat kesimpulan bahwa mobil dikemudikan rata-rata lebih dari 20000 km per tahun.

 <br />
 <br />

## No 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

| Nama Kota/Atribut   | Bandung        | Bali       |
|-------------|----------|----------|
| Jumlah Saham              | 19 | 27 |
| Sampel Mean               | 3.64 | 2.79 |
| Sampel Standar Deviasi    | 1.67 | 1.32 |

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)?

- ### Poin A
    H0 dan H1

    - H0  : μ1 = μ2
    - H1  : μ1 ≠ μ2

- ### Poin B
    Hitung Sampel Statistik!

    Menggunakan fungsi `tsum.test()` dengan parameter mean, s, dan mean kedua data kota maka didapat nilai dari sample statistik nya.

    ```R
    tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32 n.y = 27, alternative = "greater", var.equal = TRUE)
    ```

    Didapat hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206916047-f9916acf-2dc4-4234-875c-81d8d3614320.png)


- ### Poin C
    Lakukan Uji Statistik (df =2)!

    Kita menggunakan library `mosaic` dan fungsi `plotDist()` dengan parameter distribusi dan df.

    ```R
    install.packages("mosaic")
    library(mosaic)
    
    plotDist(dist = 't', df = 2, col = "red")
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206916313-7b7c4eff-22f0-4e21-a313-497d183cc744.png)

- ### Poin D
    Nilai kritikal!

    Dengan menggunakan fungsi `qchisq()` dengan parameter p dan df didaptkan hasil nilai kritikal.

    ```R
    qchisq(p = 0.05, df = 2, lower.tail = FALSE)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206916448-f018869e-317e-4ef3-9f63-1be907ecc601.png)

- ### Poin E
    Keputusan!

    Keputusan bisa kita peroleh dengan menggunakan distribusi t pada fungsi `t.test()`.

- ### Poin F
    Kesimpulan!

    Kesimpulan yang didapat yaitu ketika dilihat dari uji statistik tidak ditemukan perbedaan rata-rata.

<br/>
<br/>

## No 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika : 

Diketahui dataset  https://intip.in/datasetprobstat1

H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama

- ### Poin A
    Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

    Pertama dataset dimasukkan kedalam variabel menggunakan fungsi `read.table()`, `attach()`, dan `names()`. 
    
    Kedua lakukan grouping dan pengecekan value dalam grup menggunakan fungsi `factor()`.
    
    Ketiga bagi value menjadi 3 bagian sesuai dengan label yang dibuat menggunakan fungsi `subset()`. 
    
    Keempat gambar plot kuantil normal pada setiap grup untuk melihat nilai distribusi data menggunakan fungsi `qqnorm()` dan `qqline()`.

    ```R
    oneWayAnova <- read.table('onewayanova.txt', h = T)
    attach(oneWayAnova)
    names(oneWayAnova)
    oneWayAnova$Group <- as.factor(oneWayAnova$Group)
    oneWayAnova$Group = factor(oneWayAnova$Group,labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
    
    class(oneWayAnova$Group)
    
    Group1 <- subset(oneWayAnova, Group == "Kucing Oren")
    Group2 <- subset(oneWayAnova, Group == "Kucing Hitam")
    Group3 <- subset(oneWayAnova, Group == "Kucing Putih")
    
    qqnorm(Group1$Length)
    qqline(Group1$Length)
    
    qqnorm(Group2$Length)
    qqline(Group2$Length)
    
    qqnorm(Group3$Length)
    qqline(Group3$Length)
    ```

    Didapatkan hasil :
    
    `Group 1`
    ![image](https://user-images.githubusercontent.com/91055469/206916867-14c72f5e-3718-45f7-ac32-5ab59d4189b7.png)

    `Group 2`
    ![image](https://user-images.githubusercontent.com/91055469/206916872-d54359fb-e1f4-4baa-b0b3-ac977753c57d.png)

    `Group 3`
    ![image](https://user-images.githubusercontent.com/91055469/206916879-cd5b14b2-71ef-4f7f-8193-2259e2864647.png)

- ### Poin B
    Carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

    Digunakan fungsi `bartlett.test()` dengan parameter dataset yang telah dimasukkan kedalam variabel.

    Didapatkan hasil `p-value = 0.8054` yang mana lebih besar dari `𝛼 = 0.05` sehingga asumsi kesamaan varians terpenuhi.

    ```R
    bartlett.test(Length ~ Group, data = oneWayAnova)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206917087-dc67a05b-a862-47ac-a1ab-22505b7080ec.png)

- ### Poin C
    Untuk uji ANOVA, buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1!

    Digunakan fungsi `lm()` dan `anova()` dengan parameter dataset yang telah dimasukkan kedalam variabel.

    ```R
    model1 = lm(Length ~ Group, data = oneWayAnova)
    anova(model1)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206917187-c0fbb46e-4f7e-404d-99e3-9bce37d3cdd6.png)

- ### Poin D
    Dari Hasil Poin C , Berapakah nilai-p ? ,  Apa yang dapat Anda simpulkan dari H0?

    Didapat nilai `p-value = 0.0013`, kesimpulan yang didapat adalah tolak H0, terdapat perbedaan panjang kucing berdasarkan grup nya.

- ### Poin E
    Verifikasilah jawaban model 1 dengan Post-hooc test TukeyHSD ,  dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan!

    Menggukana fungsi `TukeyHSD()` dengan parameter `model1` dari AOV sebelumnya.

    Didapatkan hasil kombinasi dari kelompok bagian mana yang berbeda, dengan `𝛼 = 5%` perbedaan panjang kucing yang signifikan adalah pada grup 2 terhadap grup 1 dan grup 3.

    ```R
    TukeyHSD(aov(model1))
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206917408-3de84fc1-09c0-4fa0-a597-e85f1a5871b2.png)

- ### Poin F
    Visualisasikan data dengan ggplot!

    Digunakan fungsi `ggplot()` untuk visualisasi data.

    ```R
    install.packages("ggplot2")
    library("ggplot2")
  
    ggplot(oneWayAnova, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") + ylab("Length (cm)")
    ```
    
    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206917515-472951da-55f9-41df-ba2e-0c6ea979e9e1.png)


<br />
<br />

## No 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. 

Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: [Data Hasil Eksperimen](https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view).

- ### Poin A
    Buatlah plot sederhana untuk visualisasi data!

    Pertama kita instal library `readr`, `ggplot2`, `multcomView`, dan `dplyr`.

    Kedua masukkan data pada dataset kedalam variabel.

    Ketiga lakukan observasi pada data dan visualisasikan menggunakan fungsi `qplot()`.

    ```R
    install.packages("multcompView")
    library(readr)
    library(ggplot2)
    library(multcompView)
    library(dplyr)
    data_soal_5 <- "gtl.csv"
    GTL <- read_csv(data_soal_5)
    head(GTL)
    
    str(GTL)
    
    qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206917690-51c45c9b-b627-4ecc-9ed1-2951b2d66754.png)


- ### Poin B
    Lakukan uji ANOVA dua arah untuk 2 faktor!

    Menggunakan fungsi `aov()` dengan parameter variabel `factor` dan `summary()` dengan parameter fungsi `aov()` bisa dilakukan uji ANOVA.

    ```R
    GTL$Glass <- as.factor(GTL$Glass)
    GTL$Temp_Factor <- as.factor(GTL$Temp)
    str(GTL)
    
    anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
    summary(anova)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206918006-b2f4a64e-82d3-44e9-a80e-a9102e296172.png)

- ### Poin C
    Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)!

    Menggunakan fungsi `group_by()` dilanjut fungsi `summarise()` sesuai dengan mean dan standar deviasi.

    ```R
    data_summary <- group_by(GTL, Glass, Temp) %>%
      summarise(mean = mean(Light), sd = sd(Light)) %>%
      arrange(desc(mean))
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206918134-1e88d47c-4c2e-47f8-a2b2-a1c858812b69.png)


- ### Poin D
    Lakukan uji Tukey!

    Pengujian menggunakan fungsi `tukeyHSD()` dengan parameter anova.

    ```R
    tukey <- TukeyHSD(anova)
    print(tukey)
    ```

    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206918293-7812e26a-1fd2-4b55-996c-ea2e7a13703c.png)

- ### Poin E
    Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey!

    Menggunakan fungsi `multcomLetterS4()` untuk membuat compact letter, selanjutnya tambahkan compact letter ke tabel dengan mean dan standar deviasi.

    ```R
    tukey.cld <- multcompLetters4(anova, tukey)
    print(tukey.cld)
  
    cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
    data_summary$Tukey <- cld$Letters
    print(data_summary)
    ```
    
    Didapatkan hasil :
    ![image](https://user-images.githubusercontent.com/91055469/206918446-af25214b-03ce-4c48-a7fc-e8c3e26c11e2.png)


<br />
<br />

# <div style="text-align: center"> Sekian dan Terima Kasih </div>

