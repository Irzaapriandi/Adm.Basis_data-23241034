-- Buat database
CREATE DATABASE IF NOT EXISTS game_adventure;
USE game_adventure;

-- Tabel Hero
CREATE TABLE Hero (
Id_Hero INT PRIMARY KEY AUTO_INCREMENT,
First_name VARCHAR(255),
Last_name VARCHAR(255),
HP INT,
`Level` INT,
Power INT,
Defense INT,
Senjata VARCHAR(255)
);

-- Tabel Player
CREATE TABLE Player (
Id_Player INT PRIMARY KEY AUTO_INCREMENT,
Username VARCHAR(255),
Email VARCHAR(255),
Id_Hero INT,
FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero)
);

-- Tabel Lokasi
CREATE TABLE Lokasi (
Id_Lokasi INT PRIMARY KEY AUTO_INCREMENT,
Nama VARCHAR(255),
Deskripsi TEXT
);

-- Tabel Kondisi Cuaca
CREATE TABLE Cuaca (
Id_Lokasi INT,
Cuaca VARCHAR(100),
PRIMARY KEY (Id_Lokasi, Cuaca),
FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

-- Tabel Monster
CREATE TABLE Monster (
Id_Monster INT PRIMARY KEY AUTO_INCREMENT,
First_name VARCHAR(255),
Last_name VARCHAR(255),
HP INT,
`Rank` VARCHAR(50),
Power INT,
Defence INT,
Id_Lokasi INT,
FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

-- Tabel Quest
CREATE TABLE Quest(
Id_Quest INT PRIMARY KEY AUTO_INCREMENT,
Deskripsi TEXT,
Syarat_level VARCHAR(255),
Id_Hero INT,
Id_Lokasi INT,
FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

-- Tabel Item
CREATE TABLE Item (
Id_Item INT PRIMARY KEY AUTO_INCREMENT,
Nama VARCHAR(255),
Deskripsi TEXT,
Id_Quest INT,
FOREIGN KEY (Id_Quest) REFERENCES Quest(Id_Quest)
);

-- Tabel Jenis Item
CREATE TABLE Jenis_Item(
Id_Item INT,
Nama_jenis VARCHAR(255),
PRIMARY KEY (Id_Item, Nama_jenis),
FOREIGN KEY (Id_Item) REFERENCES Item(Id_Item)
);

-- Tabel Inventory
CREATE TABLE Inventory (
Id_Hero INT,
Id_Item INT,
Jumlah INT,
PRIMARY KEY (Id_Hero, Id_Item),
FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
FOREIGN KEY (Id_Item) REFERENCES Item(Id_Item)
);

SHOW TABLES;