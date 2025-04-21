-- NAMA : IRZA APRIANDI
-- NIM : 23241034
-- Kelas : A
-- Modul : Modul 1 - SELECT Statment, Prefix dan Alias

-- Membuat database baru

CREATE DATABASE IF NOT EXISTS Pti_mart;
USE Pti_mart;

-- melihat detail colom dari tiap tabel
DESCRIBE ms_pelanggan_dqlab;
DESCRIBE ms_produk_dqlab;
DESCRIBE tr_penjualan_dqlab;

-- SELECT statement

-- mengambil satu kolom dalam tabel produk
SELECT nama_produk FROM ms_produk_dqlab;

-- mengambil lebih dari satu kolom dalam tabel produk
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- mengambil semua kolom pada tabel produk
	SELECT * FROM ms_produk_dqlab;

-- mengambil lebih dari satu kolom dalam tabel produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;

-- mengambil semua kolom pada tabel penjualan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS
-- PREFIX
-- Menggunakan TRAFIX nama tabel pada kolom nama_prodak dari tabel produk
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Menggunakan TRAFIX nama database dan tabel pada kolom nama_produk dari tabel produk
SELECT pti_mart.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- ALIAS 
-- menggunakan alias pada kolom nama_produk di tabel produk
-- menggunakan AS
SELECT nama_produk AS np FROM ms_produk_dqlab;
-- tidak menggunakan AS
SELECT nama_produk np FROM ms_produk_dqlab;

-- menggunakan alias pada tabel produk
SELECT nama_produk AS np FROM ms_produk_dqlab AS msp;

-- menggunakan alias untuk PREFIX
SELECT msp.nama_produk FROM ms_produk_dqlab AS msp;

-- Latihan1
SELECT mspe.nama_pelanggan AS nmp, alamat AS alm FROM ms_pelanggan_dqlab AS mspe;

-- Latihan2
SELECT msp.nama_produk AS np, harga AS hrg FROM ms_produk_dqlab AS msp;