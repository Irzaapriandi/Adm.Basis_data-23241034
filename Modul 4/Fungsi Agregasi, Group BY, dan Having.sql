USE pti_mart;

-- FUNGSI AGREGASI
-- Hitung penjumlahan nilai qty dari seluruh baris (row) pada tabel penjualan
SELECT sum(qty) FROM tr_penjualan_dqlab;

-- Hitung jumlah seluruh transaksi yang terjadi pada tabel penjualan
SELECT COUNT(*) FROM tr_penjualan_dqlab;

-- Hitung jumlah nilai qty dan jumlah transaksi pada tabel penjualan
SELECT SUM(qty), COUNT(*) FROM tr_penjualan_dqlab;

-- Hitung jumlah nilai rata-rata dari qty dan nilai maks dan min pada tabel penjualan
SELECT AVG(qty), MIN(qty), MAX(qty) FROM tr_penjualan_dqlab;

-- COUNT(DISTINCT)
-- Tanpa COUNT(DISTINCT)
SELECT COUNT(nama_produk) FROM tr_penjualan_dqlab;
-- Pakai COUNT(DISTINCT)
SELECT COUNT(distinct nama_produk) FROM tr_penjualan_dqlab;
-- Hitung seluruh baris nama produk dan baris unik dari nama produk
SELECT COUNT(nama_produk), COUNT(distinct nama_produk) FROM tr_penjualan_dqlab;
-- Menggabungkan kolom lain dengan fungsi agregasi
-- tampilkan nama_produk yang paling banyak dibeli dalam 1 kali transaksi
SELECT nama_produk, MAX(qty) FROM tr_penjualan_dqlab;

-- GROUP BY
-- Pengelompokan isi data dari satu kolom atau lebih dan biasanya di gabung dengan fungsi agregasi
-- Ambil nilai dari pengelompokan nama produk pada tabel transaksi penjualan
SELECT nama_produk FROM tr_penjualan_dqlab GROUP BY nama_produk;

-- Ambil nilai dari pengelompokan nama produk dan qty pada tabel penjualan
SELECT nama_produk, qty FROM tr_penjualan_dqlab GROUP BY nama_produk, qty;

-- Ambil nilai dari jumlah qty dari pengelompokan nama produk pada tabel penjualan
SELECT nama_produk, SUM(qty) FROM tr_penjualan_dqlab GROUP BY nama_produk;

-- Ambil nilai dari jumlah qty dari pengelompokan nama produk pada tabel penjualan urut berdasarkan qty besar kr krcil
SELECT nama_produk, SUM(qty) FROM tr_penjualan_dqlab GROUP BY nama_produk ORDER BY SUM(qty) DESC;

-- HAVING
-- Kata kunci untuk filtering pada hasil fungsi agregasi dengan GROUP BY
-- Ambil nama produk yang hasil penjumlahan qty > 2
SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 2;

-- Latihan mandiri
SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) > 4;

SELECT nama_produk, SUM(qty)
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) = 9;

SELECT nama_produk, SUM((harga*qty) * (1 - diskon_persen /100)) AS Total_Nilai_Penjualan
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY Total_Nilai_Penjualan DESC;