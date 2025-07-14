-- Nama : irza apriandi
-- Nim : 23241034
-- Kelas : A
-- Mata kuliah : Administrasi Basis Data

DESCRIBE tr_penjualan_dqlab;
use pti_mart;

-- soal 1
SELECT nama_produk, tgl_transaksi, MONTH(tgl_transaksi), YEAR(tgl_transaksi), DATEDIFF('2023-6-30', tgl_transaksi)
FROM tr_penjualan_dqlab;

-- soal 2
SELECT nama_pelanggan, MIN(qty*harga) - (qty * harga * ( diskon_persen / 100 )) AS total_transaksi
FROM tr_penjualan_dqlab as tp
LEFT JOIN ms_pelanggan_dqlab as mp
ON tp.kode_pelanggan = mp.kode_pelanggan
ORDER BY (qty*harga) - (qty * harga * ( diskon_persen / 100 )) ASC;
 
-- soal 3
SELECT mp.nama_produk, mp.kategori_produk, mp.harga, MONTH(tp.tgl_transaksi) AS bulan
FROM ms_produk_dqlab as mp
LEFT JOIN tr_penjualan_dqlab as tp
ON mp.kode_produk = tp.kode_produk
WHERE MONTH(tp.tgl_transaksi) is NULL;


 
 
 
 
 
 
 
 
 