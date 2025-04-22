# Project-Data-Analysis-for-Retail-Sales-Performance-Report

## 📊 Deskripsi Proyek

Proyek ini bertujuan untuk menganalisis kinerja penjualan di DQLab Store menggunakan Structured Query Language (SQL). Analisis difokuskan pada efektivitas dan efisiensi promosi, serta tren penjualan berdasarkan kategori produk dan tahun. Hasil dari analisis ini diharapkan dapat memberikan wawasan yang berguna untuk pengambilan keputusan bisnis yang lebih baik.

## 🧰 Teknologi yang Digunakan

- SQL (Structured Query Language)
- Database Management System (DBMS)
- Tools visualisasi data (opsional, seperti Tableau atau Power BI)

## 🗃️ Dataset

Dataset yang digunakan mencakup transaksi penjualan dari tahun 2009 hingga 2012, dengan informasi berikut:

- `order_id`: ID unik untuk setiap pesanan
- `order_status`: Status pesanan (Finished, Returned, Cancelled)
- `customer`: Nama pelanggan
- `order_date`: Tanggal pesanan
- `order_quantity`: Jumlah item yang dipesan
- `sales`: Nilai penjualan
- `discount`: Persentase diskon
- `discount_value`: Nilai diskon
- `product_category`: Kategori produk
- `product_sub_category`: Sub-kategori produk

## 🎯 Tujuan Analisis

1. **Kinerja Penjualan Tahunan**: Mengidentifikasi tren penjualan dan jumlah pesanan yang selesai setiap tahun.
2. **Kinerja Berdasarkan Sub-Kategori Produk**: Menilai kontribusi masing-masing sub-kategori produk terhadap total penjualan.
3. **Efektivitas dan Efisiensi Promosi**: Menghitung burn rate untuk mengevaluasi efektivitas promosi yang dilakukan.
4. **Analisis Pelanggan**: Mengetahui jumlah pelanggan unik yang melakukan transaksi setiap tahun.

## 📈 Metodologi

Analisis dilakukan dengan menggunakan query SQL untuk:

- Menghitung total penjualan dan jumlah pesanan berdasarkan tahun dan sub-kategori produk.
- Menghitung burn rate dengan formula: `(total_discount / total_sales) * 100`.
- Mengidentifikasi jumlah pelanggan unik setiap tahun.

## 📂 Struktur Repositori

- `Sales_Performance_Report.sql`: Kumpulan query SQL yang digunakan untuk analisis.
- `README.md`: Dokumentasi proyek.
- `dqlab_sales_store.sql` : Database Sales Store yang akan dianalisis

## 📌 Hasil Analisis

Beberapa temuan dari analisis ini antara lain:

- Total penjualan cenderung meningkat setiap tahun, namun dengan variasi pada sub-kategori produk.
- Burn rate melebihi batas maksimum yang diharapkan (4.5%) pada beberapa tahun, menunjukkan perlunya evaluasi strategi promosi.
- Jumlah pelanggan unik yang bertransaksi relatif stabil setiap tahun.
