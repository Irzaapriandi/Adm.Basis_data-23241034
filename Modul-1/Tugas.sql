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
CREATE TABLE Kondisi_cuaca (
Id_Lokasi INT,
Cuaca VARCHAR(100),
PRIMARY KEY (Id_Lokasi, Cuaca),
FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

-- Tabel Monster
CREATE TABLE Monster (
Id_Monster INT PRIMARY KEY AUTO_INCREMENT,
Nama VARCHAR(255),
HP INT,
`Rank` VARCHAR(50),
Power INT,
Defense INT,
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

-- Memasukkan data kedalam Tabel
INSERT INTO Hero (First_name, Last_name, HP, Level, Power, Defense, Senjata) VALUES
('Irza', 'Apriandi', 1000, 999, 399, 299, 'Pedang'),
('Hasirama', 'Senju', 200, 50, 99, 49, 'Belati'),
('Madara', 'Uciha', 200, 40, 89, 39, 'Panah'),
('Uzumaki', 'Naruto', 200, 100, 199, 99, 'Tombak'),
('Date', 'Masamune', 200, 30, 59, 20, 'Kapak');

INSERT INTO Player (Username, Email, Id_Hero) VALUES
('HakkiRaja32', 'hakki26@gmail.com', 1),
('Dragon29', 'nagai336@gmail.com', 2),
('Noba34', 'cupu27@gmail.com', 3),
('Blue_Dragon23', 'blu23@gmail.com', 5),
('Kotak', 'kardus6@gmail.com', 4),
('Pascol', 'kocak534@gmail.com', 1);

INSERT INTO Lokasi (Nama, Deskripsi) VALUES
('Hutan Fajar', 'Hutan misterius dengan pepohonan yang menyala'),
('Lembah Bayangan', 'Lembah gelap dan berkabut'),
('Gua Kristal', 'Gua yang dipenuhi kristal berkilau'),
('Reruntuhan Langit', 'Reruntuhan kuno yang melayang dilangit'),
('Kawah Lava', 'Daerah panas dengan sungai lava');

INSERT INTO Kondisi_cuaca (Id_Lokasi, Cuaca) VALUES
(1, 'Cerah'),
(2, 'Hujan'),
(3, 'Berkabut'),
(4, 'Salju'),
(5, 'Badai');

INSERT INTO Monster (Nama, HP, `Rank`, Power, Defense, Id_Lokasi) VALUES
('Minotaur', 1000, 'SS', 100, 150, 1),
('Vampir', 100, 'B', 40, 25, 2),
('Dragon Fire', 500, 'S', 80, 40, 3),
('Hydra', 250, 'A', 60, 30, 4),
('Lycanthrope', 50, 'C', 25, 15, 5);

INSERT INTO Quest (Deskripsi, Syarat_level, Id_Hero, Id_Lokasi) VALUES
('Temukan pedang yang hilang', 'Level 2', 1, 1),
('Kalahkan monster di lembah', 'Level 20', 2, 2),
('Kumpulkan 10 tanaman herbal', 'Level 4', 3, 3),
('Aktifkan altar kuno', 'Level 30', 4, 4),
('Mencari tujuh bola api', 'Level 15', 5, 5);

INSERT INTO Item (Nama, Deskripsi, Id_Quest) VALUES
('Ramuan penyembuh', 'Memulihkan 30 HP', 1),
('Gulungan Sihir', 'Mengeluarkan mantra acak', 2),
('Kunci perak', 'Membuka peti', 3),
('Kristal kuno', 'Digunakan untuk meningkatkan senjata', 4),
('Kapsul ajaib', 'Memberikan efek acak selama 2 menit', 5);

INSERT INTO Jenis_Item (Id_Item, Nama_Jenis) Values
(1, 'Komsumsi'),
(2, 'Penyembuh'),
(3, 'Item kunci'),
(4, 'Bahan upgrade'),
(5, 'Bagian senjata');

INSERT INTO Inventory (Id_Hero, Id_item, Jumlah) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 5),
(4, 4, 4),
(5, 5, 2);

-- Menggunakan SELECT Statement untuk mengambil data dari setiap tabel
-- SELECT Statement untuk mengambil 1 kolom menggunakan alias dan prefix
SELECT hr.Senjata AS sjt FROM Hero AS hr;
SELECT ply.Email AS eml FROM Player AS ply;
SELECT lks.Nama AS nm FROM Lokasi AS lks;
SELECT kdsc.Cuaca AS cc FROM Kondisi_cuaca AS kdsc;
SELECT mstr.Nama AS nm FROM Monster AS mstr;
SELECT qst.Deskripsi AS dkrp FROM Quest AS qst;
SELECT itm.Id_Item AS idtm FROM Item AS itm;
SELECT jni.Nama_jenis AS njn FROM Jenis_item AS jni;
SELECT intr.jumlah AS jmlh FROM Inventory AS intr;
SELECT intr.Id_Hero AS idhr FROM Inventory AS intr;

-- SELECT Statement untuk mengambil 2 kolom menggunakan alias dan prefix
SELECT hr.First_name AS fnm, Last_name AS lnm FROM Hero AS hr;
SELECT ply.Username AS usnm, Id_Hero AS idhr FROM Player AS ply;
SELECT lks.Id_Lokasi AS idlk, Deskripsi AS dkrp FROM Lokasi AS lks;
SELECT kdsc.Id_Lokasi AS idlk, Cuaca AS cc FROM Kondisi_cuaca AS kdsc;
SELECT mstr.`Rank` AS rnk, Power AS pwr FROM Monster AS mstr;
SELECT qst.Id_Quest AS idqs, Syarat_level AS slv FROM Quest AS qst;
SELECT itm.Nama AS nm, Deskripsi AS dkrp FROM Item AS itm;
SELECT jni.Id_Item AS idtm, Nama_jenis AS njn FROM Jenis_item AS jni;
SELECT intr.Id_Item AS idtm, Jumlah AS jmlh FROM Inventory AS intr;
SELECT mstr.Nama AS nm, Id_Lokasi AS idlk FROM Monster AS mstr;
