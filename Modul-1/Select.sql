-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: pti_mart
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ms_pelanggan_dqlab`
--

DROP TABLE IF EXISTS `ms_pelanggan_dqlab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_pelanggan_dqlab` (
  `kode_pelanggan` text DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `nama_pelanggan` text DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_pelanggan_dqlab`
--

LOCK TABLES `ms_pelanggan_dqlab` WRITE;
/*!40000 ALTER TABLE `ms_pelanggan_dqlab` DISABLE KEYS */;
INSERT INTO `ms_pelanggan_dqlab` VALUES ('dqlabcust00',0,'Pelanggan Non Member',''),('dqlabcust01',1,'Eva Novianti, S.H.','Vila Sempilan, No. 67 - Kota B'),('dqlabcust02',2,'Heidi Goh','Vila Sempilan, No. 11 - Kota B'),('dqlabcust03',3,'Unang Handoko','Vila Sempilan, No. 1 - Kota B'),('dqlabcust04',4,'Jokolono Sukarman','Vila Permata Intan Berkilau, Blok C5-7'),('dqlabcust05',5,'Tommy Sinaga','Vila Permata Intan Berkilau, Blok A1/2'),('dqlabcust06',6,'Irwan Setianto','Vila Gunung Seribu, Blok O1 - No. 1 - Kota C'),('dqlabcust07',7,'Agus Cahyono','Vila Gunung Seribu, Blok F4 - No. 8'),('dqlabcust08',8,'Maria Sirait','Vila Bukit Sagitarius, Gang. Sawit No. 3'),('dqlabcust09',9,'Ir. Ita Nugraha','Vila Bukit Sagitarius, Gang Kelapa No. 6'),('dqlabcust10',10,'Djoko Wardoyo, Drs.','Vila Bukit Sagitarius, Blok A1 No. 1');
/*!40000 ALTER TABLE `ms_pelanggan_dqlab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_produk_dqlab`
--

DROP TABLE IF EXISTS `ms_produk_dqlab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_produk_dqlab` (
  `kode_produk` text DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `kategori_produk` text DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_produk_dqlab`
--

LOCK TABLES `ms_produk_dqlab` WRITE;
/*!40000 ALTER TABLE `ms_produk_dqlab` DISABLE KEYS */;
INSERT INTO `ms_produk_dqlab` VALUES ('prod-01',1,'Alat Tulis Kantor','Kotak Pensil DQLab',62500),('prod-02',2,'Aksesoris Komputer','Flashdisk DQLab 64 GB',55000),('prod-03',3,'Gift & Voucher','Gift Voucher DQLab 100rb',100000),('prod-04',4,'Aksesoris Komputer','Flashdisk DQLab 32 GB',40000),('prod-05',5,'Gift & Voucher','Gift Voucher DQLab 250rb',250000),('prod-06',6,'Alat Tulis Kantor','Pulpen Multifunction + Laser DQLab',92500),('prod-07',7,'Gift & Voucher','Tas Travel Organizer DigiSkills.id',48000),('prod-08',8,'Gift & Voucher','Gantungan Kunci DQLab',15800),('prod-09',9,'Alat Tulis Kantor','Buku Planner Agenda DQLab',92000),('prod-10',10,'Alat Tulis Kantor','Sticky Notes DQLab 500 sheets',55000);
/*!40000 ALTER TABLE `ms_produk_dqlab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tr_penjualan_dqlab`
--

DROP TABLE IF EXISTS `tr_penjualan_dqlab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tr_penjualan_dqlab` (
  `kode_urut_transaksi` int(11) DEFAULT NULL,
  `kode_transaksi` text DEFAULT NULL,
  `kode_pelanggan` text DEFAULT NULL,
  `tgl_transaksi` text DEFAULT NULL,
  `no_urut` int(11) DEFAULT NULL,
  `kode_produk` text DEFAULT NULL,
  `nama_produk` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `diskon_persen` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tr_penjualan_dqlab`
--

LOCK TABLES `tr_penjualan_dqlab` WRITE;
/*!40000 ALTER TABLE `tr_penjualan_dqlab` DISABLE KEYS */;
INSERT INTO `tr_penjualan_dqlab` VALUES (1,'tr-001','dqlabcust07','2020-05-01 00:00:00',1,'prod-01','Kotak Pensil DQLab',5,62500,0),(2,'tr-001','dqlabcust07','2020-05-01 00:00:00',2,'prod-03','Flash disk DQLab 32 GB',1,100000,25),(3,'tr-001','dqlabcust07','2020-05-01 00:00:00',3,'prod-09','Buku Planner Agenda DQSQuad',3,92000,0),(4,'tr-001','dqlabcust07','2020-05-01 00:00:00',4,'prod-04','Flashdisk DQLab 32 GB',3,40000,0),(5,'tr-002','dqlabcust00','2020-05-01 00:00:00',1,'prod-03','Gift Voucher DQLab 100rb',2,100000,0),(6,'tr-002','dqlabcust00','2020-05-01 00:00:00',2,'prod-10','Sticky Notes DQLab 500 sheets',4,55000,0),(7,'tr-002','dqlabcust00','2020-05-01 00:00:00',3,'prod-07','Tas Travel Organizer DQLab',1,48000,0),(8,'tr-003','dqlabcust03','2020-05-03 00:00:00',1,'prod-02','Flashdisk DQLab 64 GB',2,55000,12.5),(9,'tr-004','dqlabcust03','2020-05-03 00:00:00',1,'prod-10','Sticky Notes DQLab 500 sheets',5,55000,0),(10,'tr-004','dqlabcust03','2020-05-03 00:00:00',2,'prod-04','Flashdisk DQLab 32 GB',4,40000,0),(11,'tr-005','dqlabcust00','2020-06-12 00:00:00',1,'prod-09','Buku Planner Agenda DQSQuad',3,92000,0),(12,'tr-005','dqlabcust00','2020-06-12 00:00:00',2,'prod-01','Kotak Pensil DQLab',1,62500,5),(13,'tr-005','dqlabcust00','2020-06-12 00:00:00',3,'prod-04','Flashdisk DQLab 32 GB',2,40000,0),(14,'tr-006','dqlabcust02','2020-06-19 00:00:00',1,'prod-05','Gift Voucher DQLab 250rb',4,250000,0),(15,'tr-006','dqlabcust02','2020-06-19 00:00:00',2,'prod-08','Gantungan Kunci DQLab',2,15800,0);
/*!40000 ALTER TABLE `tr_penjualan_dqlab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-21 23:48:26
