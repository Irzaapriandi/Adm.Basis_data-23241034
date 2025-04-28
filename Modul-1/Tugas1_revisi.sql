USE game_adventure;

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
