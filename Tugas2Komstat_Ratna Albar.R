library(dplyr)
data(iris)
#1.Tampilkan data Sepal.Length saja
iris$Sepal.Length
#2.Sebutkan tipe data tiap kolom
str(iris)
#3.Buat variabel turunan
turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
turunan
#4.Masukkan turunan ke data iris
iris$turunan <- turunan
head(iris)
#5.Ambil data dengan sepal bernilai besar dari species virginica
subset(iris, turunan == "Besar" & Species == "virginica")
#6.Cek jumlah spesies dalam data
table(iris$Species)
#7.Pecah data iris menjadi 3 data frame
setosa <- subset(iris, Species == "setosa")
versicolor <- subset(iris, Species == "versicolor")
virginica <- subset(iris, Species == "Virginica")
head(setosa)
#8.Urutkan masing-masing berdasarkan Sepal.Width
data_setosa_urut <- arrange(setosa, Sepal.Width)
print(data_setosa_urut)
data_versicolor_urut <- arrange(versicolor, Sepal.Width)
print(data_versicolor_urut)
data_virginica_urut <- arrange(virginica, Sepal.Width)
print(data_virginica_urut)