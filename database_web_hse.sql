-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2025 at 03:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_web_hse`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`) VALUES
(1, 'Boiler'),
(2, 'Boiler 4T'),
(3, 'Boiler 6T'),
(4, 'Cake Bagging'),
(5, 'Deo'),
(6, 'Genset'),
(7, 'GHCI'),
(8, 'Golden'),
(9, 'Grinding'),
(10, 'PLB'),
(11, 'Press'),
(12, 'Produksi'),
(13, 'Roaster'),
(14, 'Temp'),
(15, 'TPS LB3'),
(16, 'Utility'),
(17, 'Workshop Mekanik');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'kartu tanda kewenangan ahli k3'),
(2, 'penunjukan ahli keselamatan dan kesehatan kerja umum'),
(3, 'lisensi k3 petugas peran kebakaran klas d'),
(4, 'lisensi petugas p3k di tempat kerja'),
(5, 'lisensi pesawat tenaga dan produksi operator'),
(6, 'lisensi operator k3 pesawat uap klas ii'),
(7, 'kemnaker ri lisensi k3 pesawat angkat dan angkut'),
(8, 'keterangan pemeriksaan dan pengujian penyalur petir'),
(9, 'surat keterangan pemeriksaan dan pengujian bejana tekan (air receiver)'),
(10, 'surat keterangan pemeriksaan dan pengujian genset'),
(11, 'surat keterangan pemeriksaan dan pengujian instalasi proteksi kebakaran'),
(12, 'surat keterangan pemeriksaan dan pengujian instalasi listrik'),
(13, 'surat keterangan pemerikasaan dan pengujian reach truck'),
(14, 'surat keterangan hasil pemeriksaan dan pengujian forklift'),
(15, 'surat keterangan hasil pemeriksaan dan pengujian ketel uap'),
(16, 'pengesahan gambar rencana perakitan/pemasangan ketel uap'),
(17, 'surat keterangan hasil pengujian meter air'),
(18, 'keterangan hasil pemeriksaan'),
(19, 'izin pengelolaan limbah b3 untuk kegiatan penyimpanan sementara'),
(20, 'keputusan kepala disnakertrans provinsi banten pengesahan p2k3'),
(21, 'laporan ukl-ipl'),
(22, 'pemberian daftar ulang surat ijin pengusahaan air tanah (sipa)'),
(23, 'laporan hasil pengujian emisi'),
(24, 'sertifikast laik fungsi bangunan gedung'),
(25, 'surat keterangan hasil pemeriksaan dan pengujian'),
(26, 'praketek pemenuhan baku mutu air limbah untuk aplikasi ke tanah sebagai penyiraman'),
(27, 'laporan hasil riksa uji kelaikan bejana tekan storage tank'),
(28, 'laporan hasil riksa uji kelaikan pesawat angkat dan angkut roller conveyor'),
(29, 'laporan hasil riksa uji mesin perkakas dan mesin produksi'),
(30, 'mou limbah b3'),
(31, 'riksa uji lingkungan kerja'),
(34, 'kemnaker tanda kewenangan ahli k3'),
(37, 'Surat Keterangan Pemeriksaan dan Pengujian, Instalasi Penyalur Petir'),
(38, 'Surat Keterangan Pemeriksaan dan Pengujian, Bejana Tekan (Air receiver)'),
(39, 'Laporan Pemeriksaan dan Pengujian Berkala Instalasi Proteksi Kebakaran'),
(40, 'Surat Keterangan Hasil Pengujian Instalasi Listrik'),
(41, 'Surat Keterangan Hasil Pemeriksaan dan Pengujian Boiler 4T'),
(42, 'Surat Keterangan Hasil Pemeriksaan dan Pengujian Boiler 6T'),
(43, 'Laporan P2K3'),
(44, 'Laporan Pengelolaan Lingkungan Hidup'),
(45, 'Sertifikat Kalibrasi Pressure Gauge'),
(46, 'Sertifikat Kalibrasi Pressure Safety Valve'),
(47, 'Laporan Hasil Riksa Uji Overhead Crane 5 Ton'),
(48, 'Laporan Hasil Riksa Uji Lingkungan Kerja');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `abbreviated_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `abbreviated_name`) VALUES
(1, 'Information Technology', 'IT'),
(2, 'Spare Parts Warehouse', 'GSP'),
(3, 'Raw Materials Warehouse', 'GBB'),
(4, 'Finished Goods Warehouse', 'GBJ'),
(5, 'Supporting Materials Warehouse', 'GBP'),
(6, 'Production', 'PRO'),
(7, 'Finance', 'FIN'),
(8, 'Accounting', 'ACC'),
(9, 'Human Resources', 'HR'),
(10, 'General Affairs', 'GA'),
(11, 'Project', 'PRJ'),
(12, 'HSE', 'HSE'),
(13, 'Quality Control', 'QC'),
(14, 'Business Process', 'BP'),
(15, 'Mechanical', 'MEC'),
(16, 'Electrical', 'ELC'),
(17, 'Utility Vehicle', 'UVC'),
(18, 'Mess', 'MSS'),
(19, 'BC', 'BC'),
(20, 'PPIC', 'PPIC'),
(21, 'Legal', 'LGL'),
(22, 'Security', 'SEC'),
(23, 'Procurement', 'PRC'),
(24, 'Civil', 'CIV'),
(25, 'Marketing', 'MRK'),
(26, 'Guest', 'GST');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `no_document` varchar(500) NOT NULL,
  `capacity` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `no_pr` varchar(500) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_institution` int(11) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_series` int(11) DEFAULT NULL,
  `id_area` int(11) DEFAULT NULL,
  `id_vendor` int(11) DEFAULT NULL,
  `id_pic` int(11) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `no_document`, `capacity`, `description`, `posting_date`, `exp_date`, `no_pr`, `id_category`, `id_institution`, `id_model`, `id_series`, `id_area`, `id_vendor`, `id_pic`, `id_location`, `cost`, `id_status`) VALUES
(1, '5/9885/AB.02.04/X/2020', NULL, 'Disimpan di HRD/Pensiun', '2024-05-28', '2028-03-25', NULL, 2, 1, 36, 39, NULL, NULL, 1, 1, NULL, 6),
(2, '-', NULL, 'Dokumen di HRD', NULL, NULL, NULL, 3, 1, 1, 44, NULL, 7, 1, 1, NULL, 5),
(3, '131460-OPK3-LT/PAA/XII/2018-1', NULL, 'Dokumen di HRD', '2018-12-12', '2023-12-12', NULL, 7, 2, 2, 34, NULL, 7, 2, 1, 1150000, 5),
(4, '2975021224/A-OFK2/31/XII/2024', NULL, 'Disimpan di HRD/Pensiun', '2024-12-02', '2029-12-02', NULL, 7, 4, 2, 34, NULL, 7, 2, 1, NULL, 6),
(5, '3971280824/A-OFK2/31/VII/2024', NULL, 'Dokumen di HRD', '2024-08-28', '2028-08-29', NULL, 7, 2, 3, 45, NULL, 7, 2, 1, NULL, 5),
(6, '131461-OPK3-LT/PAA/XII/2018', NULL, 'Dokumen di HRD', '2018-12-12', '2023-12-12', NULL, 7, 2, 4, 45, NULL, 7, 2, 1, 1150000, 5),
(7, '131461-OPK3-LT/PAA/XII/2018', NULL, 'Dokumen di HRD', '2024-12-02', '2029-12-02', NULL, 7, 2, 4, 45, NULL, 7, 2, 1, NULL, 5),
(8, '2976021224/A-OFK2/31/XII/2024', NULL, 'Dokumen di HRD', '2020-11-02', '2025-11-02', NULL, 7, 2, 5, 44, NULL, 7, 2, 1, NULL, 5),
(9, '175119-OPK3-LT/PAA/XI/2020', NULL, 'Dokumen di HRD', '2020-11-02', '2025-11-02', NULL, 7, 2, 6, 44, NULL, 7, 2, 1, NULL, 5),
(10, '175121-OPK3-LT/PAA/XI/2020', NULL, 'Dokumen di HRD', '2020-11-02', '2025-11-02', NULL, 7, 2, 7, 44, NULL, 7, 2, 1, NULL, 5),
(11, '175124-OPK3-LT/PAA/XI/2020', NULL, 'Dokumen di HRD', '2020-11-02', '2025-11-02', NULL, 7, 2, 8, 34, NULL, 7, 2, 1, NULL, 5),
(19, '12378.OPK3-PUBT.B.II/X/2020', NULL, 'Dokumen di HRD', '2020-10-26', '2025-10-26', NULL, 6, 1, 13, NULL, NULL, 7, 1, 1, NULL, 5),
(20, '12376.OPK3-PUBT.B.II/X/2020', NULL, 'Dokumen di HRD', '2020-10-26', '2025-10-26', NULL, 6, 1, 14, NULL, NULL, 7, 1, 1, NULL, 5),
(21, '12377.OPK3-PUBT.B.II/X/2020', NULL, 'Dokumen di HRD', '2020-10-26', '2025-10-26', NULL, 6, 1, 15, NULL, NULL, 7, 1, 1, NULL, 5),
(22, '054/IL/K3/III/2024', '4000 KVA', 'Dokumen di HRD', '2024-03-27', '2025-03-05', NULL, 39, 4, 16, NULL, NULL, 1, 1, 1, 1700000, 5),
(23, '3804/PAA/K3/XII/2023', '1800 Kg', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 13, 4, 17, 17, NULL, 3, 1, 1, NULL, 5),
(24, '4047/PAA/K3/XII/2024', '1800 Kg', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 13, 4, 17, 17, NULL, 3, 1, 1, NULL, 5),
(25, '3802/PAA/K3/XII/2023', '3500 Kg', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 18, 12, NULL, 3, 1, 1, NULL, 5),
(26, '4043/PAA/K3/XII/2024', '3500 Kg', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 18, 12, NULL, 3, 1, 1, NULL, 5),
(27, '3803/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 19, 8, NULL, 3, 1, 1, NULL, 5),
(28, '4040/PAA/K3/XII/2024', '3500 KG', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 19, 8, NULL, 3, 1, 1, NULL, 5),
(29, '3798/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 19, 15, NULL, 3, 1, 1, NULL, 5),
(30, '3798/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD, Forklift Under Maintenance', '2023-12-20', '2024-11-21', NULL, 14, 4, 19, 15, NULL, 3, 1, 1, NULL, 6),
(31, '4044/PAA/K3/XII/2024', '3500 KG', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 19, 13, NULL, 3, 1, 1, NULL, 5),
(32, '3800/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 18, 14, NULL, 3, 1, 1, NULL, 5),
(33, '4042/PAA/K3/XII/2024', '3500 KG', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 18, 14, NULL, 3, 1, 1, NULL, 5),
(34, '3801/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 18, 16, NULL, 3, 1, 1, NULL, 5),
(35, '4045/PAA/K3/XII/2024', '3500 KG', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 18, 16, NULL, 3, 1, 1, NULL, 5),
(36, '3797/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 19, 10, NULL, 3, 1, 1, NULL, 5),
(37, '3797/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD, Forklift Under Maintenance', '2023-12-20', '2024-11-21', NULL, 14, 4, 19, 10, NULL, 3, 1, 1, NULL, 6),
(38, '4046/PAA/K3/XII/2024', '3500 KG', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 19, 9, NULL, 3, 1, 1, NULL, 5),
(39, '3799/PAA/K3/XII/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-12-20', '2024-11-21', NULL, 14, 4, 19, 11, NULL, 3, 1, 1, NULL, 5),
(40, '4041/PAA/K3/XII/2024', '3500 KG', 'Dokumen Asli ada di HRD', '2024-12-30', '2025-11-11', NULL, 14, 4, 19, 11, NULL, 3, 1, 1, NULL, 5),
(41, '0145/KU/K3/VIII/2023', '4 T', 'Dokumen di HRD', '2023-08-28', '2025-07-10', NULL, 41, 4, 20, 18, 16, 3, 1, 1, NULL, 5),
(42, '0144/KU/K3/VIII/2023', '6 T', 'Dokumen di HRD', '2023-08-28', '2025-06-05', NULL, 42, 4, 20, 49, 16, 3, 1, 1, NULL, 5),
(43, '1920/MET-T/X/2023', '65 M3/h', 'Dokumen Asli ada di Electric /Pelaksana Electric', '2023-10-23', '2028-10-23', NULL, 17, 5, 21, 43, 16, NULL, 1, 1, NULL, 5),
(44, '364.1/220/BAP II-DAMKAR/2023', NULL, 'Kunjungan sekali /Th/Dok.HSE, Tahun 2024 Tidak ada Kunjungan', '2023-10-24', NULL, NULL, 18, 6, 22, NULL, NULL, NULL, 1, 1, NULL, 5),
(45, '667/59/Penceg./BLH/2016', NULL, 'SPPL (Surat Pernyataan Kesanggupan Pengelolaan Dan Pemantauan Lingk.hidup) OSS', '2016-12-22', NULL, NULL, 19, 7, 23, NULL, NULL, NULL, 1, 1, NULL, 5),
(46, '188.4/3/426-DTKT/P2K3/II/2023', NULL, 'Dokumen di HRD', '2023-02-06', NULL, NULL, 20, 4, 24, NULL, NULL, NULL, 1, 1, NULL, 5),
(47, 'Bukti laporan Kegiatan P2K3 PT.GHC Triwulan ke4 2022 sudah diterima', NULL, '3 bulan sekali', NULL, NULL, NULL, 43, 4, 25, NULL, NULL, NULL, 1, 1, NULL, 5),
(48, 'Tanpa nomor dokumen', NULL, 'Dokumen di HSE', NULL, NULL, NULL, 21, 9, 26, NULL, NULL, NULL, 1, 1, NULL, 5),
(49, '01/LPLB3/GHCI/02/2021', NULL, '3 bulan sekali/online siraja limbah', NULL, NULL, NULL, 44, 9, 27, NULL, NULL, NULL, 1, 1, NULL, 5),
(50, '570/541/DU-SIPA/DPMPTSP/IV/2021', NULL, 'Dokumen Asli di HRD Serang/TDK.DIPERPANJANG', '2021-04-24', '2024-04-24', NULL, 22, 10, 28, NULL, NULL, NULL, 1, 1, NULL, 6),
(51, 'NOTC012401/004', '500 kva', 'Dokumen di HRD', '2024-04-24', '2025-04-24', NULL, 23, 11, 29, NULL, 16, 4, 1, 1, NULL, 5),
(52, 'NOTC012401/003', '4T', 'Dokumen di HRD', '2024-04-24', '2025-04-24', NULL, 23, 11, 29, NULL, 16, 4, 1, 1, NULL, 5),
(53, 'NOTC012401/001', '6T', 'Dokumen di HRD', '2024-04-24', '2025-04-24', NULL, 23, 11, 29, NULL, 16, 4, 1, 1, NULL, 5),
(54, 'NOTC012401/002', '0,3T', 'Dokumen di HRD', '2024-04-24', '2025-04-24', NULL, 23, 11, 29, NULL, 5, 4, 1, 1, NULL, 5),
(55, '-', NULL, 'Dokumen Asli ada di HRD', NULL, NULL, NULL, 4, NULL, 30, NULL, NULL, NULL, 1, 1, NULL, 5),
(56, '647/15/SLF/DPMPTSP/2021', NULL, 'SIES Konsultama. Dok.disimpan di Pusat.', '2021-07-21', '2026-07-21', NULL, 24, 12, 31, NULL, NULL, NULL, 1, 1, NULL, 5),
(57, 'B08220699/PG-16.4B-2', 'Rentang ukur 0-16 BAR/0,5 BAR', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-08-12', '2023-08-12', NULL, 45, 13, 32, 36, 2, 2, 3, 1, NULL, 6),
(58, 'B08220755/PG-16.4B-1', 'Rentang ukur 0-16 BAR/0,5 BAR', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-08-12', '2023-08-12', NULL, 45, 13, 33, 35, 2, 2, 3, 1, NULL, 6),
(59, 'B08221004', 'Tekanan 10 BAR', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-08-18', '2023-08-18', NULL, 46, 13, 34, 32, 2, 2, 3, 1, NULL, 6),
(60, 'B08221003', 'Nilai Tekanan 16 bar', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-08-18', '2023-08-18', NULL, 46, 13, 34, 33, 2, 2, 3, 1, NULL, 6),
(61, 'B06221141', 'Rentang ukur/Resolusi 0-16/0,5 bar', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-06-20', '2023-06-20', NULL, 45, 13, 35, 37, 3, 2, 3, 1, NULL, 6),
(62, 'B06221087', 'Rentang ukur/Resolusi 0-16/0,5 bar', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-06-20', '2023-06-20', NULL, 45, 13, 35, 38, 3, 2, 3, 1, NULL, 6),
(63, 'B06221694', 'Nilai tekanan 10 bar', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-07-13', '2023-07-13', NULL, 46, 13, 34, 33, 3, 2, 3, 1, NULL, 6),
(64, 'B06221695', 'Nilai tekanan 10 bar', 'Dokumen Asli diimpan di elektrik, Pindah ke Schedule Kalibrasi', '2022-07-13', '2023-07-13', NULL, 46, 13, 34, 32, 3, 2, 3, 1, NULL, 6),
(65, '88807/PK3/AJ/36/2020/PO', NULL, 'Disimpan di HRD/Pensiun', '2020-10-21', '2028-03-25', NULL, 1, 1, 36, 25, NULL, NULL, 1, 1, NULL, 6),
(66, 'Reg.8094/AK3-LIST/IV/2021-PO No. 5/1219/AS.02.01/I/2021', NULL, 'Dokumen Asli ada di HRD', '2021-04-19', '2024-04-29', NULL, 1, 1, 37, 24, NULL, NULL, 1, 1, 2250000, 5),
(67, '0005180924/F-ALST/36/IX/2024', NULL, 'Dokumen Asli ada di HRD', '2024-09-18', '2027-09-18', NULL, 1, 1, 37, 24, NULL, 7, 1, 1, NULL, 5),
(68, '10296/PM/PTP/VI/2021', NULL, 'Dokumen Asli ada di HRD', '2021-06-21', '2026-06-21', NULL, 5, 1, 38, 42, NULL, 7, 1, 1, NULL, 5),
(69, '2904/PAA/K3/IX/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-09-15', '2025-08-21', NULL, 14, 4, 39, 19, 10, 3, 1, 1, NULL, 5),
(70, '2905/PAA/K3/IX/2023', '3500 KG', 'Dokumen Asli ada di HRD', '2023-09-15', '2025-08-21', NULL, 14, 4, 39, 20, 10, 3, 1, 1, NULL, 5),
(71, '0190/KU/K3/XII/2023', '73 LITER', 'Dokumen Asli ada di HRD', '2023-12-20', '2025-11-14', NULL, 16, 4, 40, 4, 5, 3, 1, 1, NULL, 5),
(72, '5/368/AS.03.03/X2023', 'TEK OPERASI 42 Bar', 'Dokumen Asli ada di HRD', '2023-10-02', NULL, NULL, 15, 4, 40, 4, 5, 3, 1, 1, NULL, 5),
(73, '0172/PTP/K3/II/2024', '300-500 Kg/Jam', 'Dokumen Asli ada di HRD', '2024-02-15', '2025-01-15', NULL, 25, 4, 41, 46, 12, 1, 1, 1, 1700000, 5),
(74, '0173/PTP/K3/II/2024', '2550 Kg/Jam', 'Dokumen Asli ada di HRD', '2024-02-15', '2025-01-15', NULL, 25, 4, 42, 3, 12, 1, 1, 1, 1700000, 5),
(75, '0175/PTP/K3/II/2024', '1500 Kg/Jam', 'Dokumen Asli ada di HRD', '2024-02-15', '2025-01-15', NULL, 25, 4, 43, 3, 12, 1, 1, 1, 1700000, 5),
(76, '0174/PTP/K3/II/2024', '1600 Kg/Jam', 'Dokumen Asli ada di HRD', '2024-02-15', '2025-01-15', NULL, 25, 4, 44, 3, 12, 1, 1, 1, 1700000, 5),
(77, '0462/PAA/K3/II/2024', '3 TON/JAM', 'Dokumen Asli ada di HRD', '2024-02-15', '2025-01-15', NULL, 25, 4, 45, 2, 12, 1, 1, 1, 1700000, 5),
(78, 'S.1302/PPKL/PPA/PKL.2.12/B/03/2024', '150 M3/D', 'LEGAL /HSE', '2024-03-22', NULL, NULL, 26, 14, 46, NULL, 7, NULL, 1, 1, NULL, 5),
(79, '0210/BT/K3/III/2024', '5000 L', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 48, 40, 11, 1, 1, 1, 1700000, 5),
(80, '0214/BT/K3/III/2024', '2500 L', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 47, 26, 14, 1, 1, 1, 1700000, 5),
(81, '0215/BT/K3/III/2024', '18000 L', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 47, 1, 14, 1, 1, 1, 1700000, 5),
(82, '0212/BT/K3/III/2024', '2500 L', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 47, 23, 11, 1, 1, 1, 1700000, 5),
(83, '0211/BT/K3/III/2024', '5000 L', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 48, 41, 11, 1, 1, 1, 1700000, 5),
(84, '0213/BT/K3/III/2024', '18000 L', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 47, 1, 11, 1, 1, 1, 1700000, 5),
(85, '0209/BT/K3/III/2024', '10 M3', NULL, '2024-03-27', '2025-03-05', NULL, 27, 4, 47, 1, 4, 1, 1, 1, 1700000, 5),
(86, '0801/PAA/K3/III/2024', '50 Kg', NULL, '2024-03-27', '2025-03-05', NULL, 28, 4, 49, 7, 4, 1, 1, 1, 1700000, 5),
(87, '0800/PAA/K3/III/2024', '50 Kg', NULL, '2024-03-27', '2025-03-05', NULL, 28, 4, 50, 6, 14, 1, 1, 1, 1700000, 5),
(88, '0316/PTP/K3/III/2024', '2300 Kg/Jam', NULL, '2024-03-27', '2025-03-05', NULL, 29, 4, 51, 47, 11, 1, 1, 1, 1700000, 5),
(89, '0317/PTP/K3/III/2024', '944 KG/Jam', NULL, '2024-03-27', '2025-03-05', NULL, 29, 4, 52, 5, 11, 1, 1, 1, 1700000, 5),
(90, '0315/PTP/K3/III/2024', '5500 Kg/Jam', NULL, '2024-03-27', '2025-03-05', NULL, 29, 4, 53, 21, 14, 1, 1, 1, 1700000, 5),
(91, '0318/PTP/K3/III/2024', '1200 Kg/Jam', NULL, '2024-03-27', '2025-03-05', NULL, 29, 4, 54, 1, 9, 1, 1, 1, 1700000, 5),
(92, '0319/PTP/K3/III/2024', '1200 Kg/Jam', NULL, '2024-03-27', '2025-03-05', NULL, 29, 4, 55, 1, 9, 1, 1, 1, 1700000, 5),
(93, '732/UEP/SPKLB3/XI/2023', NULL, NULL, '2023-11-02', '2024-11-01', NULL, 30, 15, 56, NULL, 15, 6, 1, 1, NULL, 5),
(94, '111/SPKLB3-IND/UEP/XI/2024', NULL, NULL, '2024-11-02', '2025-11-01', NULL, 30, 15, 56, NULL, 15, 6, 1, 1, NULL, 5),
(95, '4048/PAA/K3/XII/2024', '5000 Kg', 'Dokumen Asli ada di HRD, untuk laporan overhead crane dibuat berkala dikarenakan tahun pembuatan alatnya tahun 2010 (tahun tua), maka dari Disnaker dikategorikan alat tsb berkala walaupun ini adalah sertifikasi pertama', '2024-12-30', '2025-11-11', NULL, 47, 4, 57, 48, 17, 3, 1, 1, NULL, 5),
(96, '560/0502-DTKT/K3-LK/XII/2024', 'Ruangan HRD', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 58, NULL, NULL, NULL, NULL, 1, NULL, 5),
(97, '560/0503-DTKT/K3-LK/XII/2024', 'Lab. Chemical, Lab. Micro', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 58, NULL, NULL, NULL, NULL, 1, NULL, 5),
(98, '560/0504-DTKT/K3-LK/XII/2024', 'Filling Cake, Bagging SHsell, Area RM', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 59, NULL, NULL, NULL, NULL, 1, NULL, 5),
(99, '560/0505-DTKT/K3-LK/XII/2024', 'Bagging Cake, Pressing Line 5-6 dan 8-9, Workshop Grinding, Area Boiler, Powder Plant', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 60, NULL, NULL, NULL, NULL, 1, NULL, 5),
(100, '560/0506-DTKT/K3-LK/XII/2024', 'R. HRD, Finish Good, Block Off, Filling Cake, Powder, QC Beans, GSP, Drying/Winnowing', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 61, NULL, NULL, NULL, NULL, 1, NULL, 5),
(101, '560/0507-DTKT/K3-LK/XII/2024', 'GSP, Bagging Cake, Curah Beans, MCC SPV, Deodorizer Lt,2 dan Lt.3', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 62, NULL, NULL, NULL, NULL, 1, NULL, 5),
(102, '560/0508-DTKT/K3-LK/XII/2024', 'RM (Forklift CAT), Curah Beans (Forklift Patria), Finish Good (Forklift Heli), Finish Good (Forklift CAT), Workshop Mekanik (Gerinda Tangan)', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 63, NULL, NULL, NULL, NULL, 1, NULL, 5),
(103, '560/0509-DTKT/K3-LK/XII/2024', 'Purchasing, Admin Lab.QC, Block Off - Cocoa Butter Filling, Block Off - Sealing, Curah Beans, Bagging Cake', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 64, NULL, NULL, NULL, NULL, 1, NULL, 5),
(104, '560/0510-DTKT/K3-LK/XII/2024', '75 Responden dari 14 Divisi', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 65, NULL, NULL, NULL, NULL, 1, NULL, 5),
(105, '560/0511-DTKT/K3-LK/XII/2024', 'Office A, Office B', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 66, NULL, NULL, NULL, NULL, 1, NULL, 5),
(106, '560/0512-DTKT/K3-LK/XII/2024', 'Office A, Office B, Area Produksi', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 67, NULL, NULL, NULL, NULL, 1, NULL, 5),
(107, '560/0513-DTKT/K3-LK/XII/2024', 'Sanitasi 1, Sanitasi 2, Sanitasi 3, Sanitasi 4', NULL, '2024-01-13', '2025-11-12', NULL, 48, NULL, 68, NULL, NULL, NULL, NULL, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `document_files`
--

CREATE TABLE `document_files` (
  `id` int(11) NOT NULL,
  `id_document` int(11) NOT NULL,
  `file_data` longblob DEFAULT NULL,
  `file_url` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inspection_request`
--

CREATE TABLE `inspection_request` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `cost` int(11) NOT NULL,
  `id_vendor` int(11) NOT NULL,
  `id_vendor2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inspection_request`
--

INSERT INTO `inspection_request` (`id`, `name`, `date`, `cost`, `id_vendor`, `id_vendor2`) VALUES
(1, 'RIKSA UJI BEATER BLADE MILL SMM', '2025-01-01', 1700000, 5, 1),
(2, 'RIKSA UJI MESIN ROASTING/TORNADO 7500 RS', '2025-01-01', 1700000, 5, 1),
(3, 'RIKSA UJI MESIN WINNOWING/WINNOWER W.2400', '2025-01-01', 1700000, 5, 1),
(4, 'RIKSA UJI MESIN DRYING/ZLG Vibrayion Fluid Bed Dryer 0.9x6.0', '2025-01-01', 1700000, 5, 1),
(5, 'RIKSA UJI BUCKET ELEVATOR/CENTRIFUGAL BUCKET ELEVATORS', '2025-01-01', 1700000, 5, 1),
(6, 'RIKSA UJI INSTLASI PROTEKSI KEBAKARAN', '2025-02-01', 2150000, 5, 1),
(7, 'RIKSA UJI INSTALASI LISTRIK 4000 KVA', '2025-03-01', 2150000, 5, 1),
(8, 'RIKSA UJI KELAIKAN BEJANA TEKAN STORAGE TANK (COCOA BUTTER BERSIH)', '2025-03-01', 1700000, 5, 1),
(9, 'RIKSA UJI KELAIKAN BEJANA TEKAN STORAGE TANK (TANKI 2 T)', '2025-03-01', 1700000, 5, 1),
(10, 'RIKSA UJI KELAIKAN BEJANA TEKAN STORAGE TANK (TANKI 15 T)', '2025-03-01', 1700000, 5, 1),
(11, 'RIKSA UJI KELAIKAN BEJANA TEKAN STORAGE TANK (TANKI LIQUOR 2 T)', '2025-03-01', 1700000, 5, 1),
(12, 'RIKSA UJI KELAIKAN BEJANA TEKAN STORAGE TANK (COCOA BUTTER KOTOR)', '2025-03-01', 1700000, 5, 1),
(13, 'RIKSA UJI KELAIKAN BEJANA TEKAN STORAGE TANK (TANKI LIQUOR 18T)', '2025-03-01', 1700000, 5, 1),
(14, 'RIKSA UJI KELAIKAN STORAGE TANK SILO 10m3', '2025-03-01', 1700000, 5, 1),
(15, 'RIKSA UJI KELAIKAN PESAWAT ANGKAT DAN ANGKUT ROLLER CONVEYOR', '2025-03-01', 1700000, 5, 1),
(16, 'RIKSA UJI KELAIKAN PESAWAT ANGKAT DAN ANGKUT ROLLER CONVEYOR', '2025-03-01', 1700000, 5, 1),
(17, 'RIKSA UJI MESIN PERKAKAS DAN PRODUKSI MESIN FILTER PRESS', '2025-03-01', 1700000, 5, 1),
(18, 'RIKSA UJI MESIN PERKAKAS DAN PRODUKSI MESIN PRESS', '2025-03-01', 1700000, 5, 1),
(19, 'RIKSA UJI MESIN PERKAKAS DAN PRODUKSI MESIN TEMPERING', '2025-03-01', 1700000, 5, 1),
(20, 'RIKSA UJI MESIN PERKAKAS DAN PRODUKSI MESIN FBM', '2025-03-01', 1700000, 5, 1),
(21, 'RIKSA UJI MESIN PERKAKAS DAN PRODUKSI MESIN PBM', '2025-03-01', 1700000, 5, 1),
(22, 'RIKSA UJI MOTOR DIESEL 500 KVA', '2025-03-01', 1700000, 5, 1),
(23, 'RIKSA UJI BEJANA TEKAN (AIR RECEIVER)', '2025-03-01', 1600000, 3, NULL),
(24, 'RIKSA UJI BEJANA TEKAN (AIR RECEIVER)', '2025-03-01', 1600000, 3, NULL),
(25, 'RIKSA UJI BEJANA TEKAN (AIR RECEIVER)', '2025-03-01', 1600000, 3, NULL),
(26, 'PENGUJIAN EMISI GENSET 500 KVA', '2025-04-01', 240000, 4, NULL),
(27, 'PENGUJIAN EMISI BOILER 4 TON', '2025-04-01', 240000, 4, NULL),
(28, 'PENGUJIAN EMISI BOILER 6 TON', '2025-04-01', 240000, 4, NULL),
(29, 'PENGUJIAN EMISI HIGH PRESSURE BOILER 0,3 TON', '2025-04-01', 240000, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `institutions`
--

CREATE TABLE `institutions` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institutions`
--

INSERT INTO `institutions` (`id`, `name`) VALUES
(1, 'Kementrian Ketenagakerjaan RI'),
(2, 'Direktur Pengawasan Norma Keselamatan dan Kesehatan Kerja Kemenaker RI '),
(4, 'Disnakertrans Prov.Banten'),
(5, 'UPT Metrologi Disperindagkop.UMKM Pemkab.serang'),
(6, 'Pemkab Serang BPBD'),
(7, 'Pemkab Serang Badan Lingk.Hidup'),
(9, 'DLH Kab,DLHK Prop Disperindag Serang,KLHK RI'),
(10, 'Pemprov Banten ( DPMPTSP )'),
(11, 'Intisurya Laboratorium'),
(12, 'Kepala Dinas Penanaman  Modal dan Pelayanan Terpadu Satu Pintu, Pemerintah Kabupaten Serang'),
(13, 'CALTESYS'),
(14, 'Kementrian Lingkungan Hidup dan Kehutanan Direktorat Jenderal Pengendalian Pencemaran dan Kerusakan Lingkungan'),
(15, 'Universal Eco Pasific');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`) VALUES
(1, 'Eksternal'),
(2, 'Internal');

-- --------------------------------------------------------

--
-- Table structure for table `log_documents`
--

CREATE TABLE `log_documents` (
  `id` int(11) NOT NULL,
  `no_document` varchar(500) DEFAULT NULL,
  `id_document` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `date` date NOT NULL,
  `action` varchar(500) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `name`) VALUES
(1, 'Guntur Saputra'),
(2, 'WAHUJAN NURHADI'),
(3, 'SOPANI'),
(4, 'ADE KURNIAWAN'),
(5, 'MASADE'),
(6, 'TETET SATIADI'),
(7, 'IRVAN GUSRAINEDA'),
(8, 'MULYADI'),
(9, 'ELECTROSTATIC'),
(10, 'GB 150-1998'),
(11, 'Motor Diesel'),
(12, 'Instalasi Hydrant Kebakaran'),
(13, 'A.HUJAJI'),
(14, 'RASUDDIN'),
(15, 'IPAY RIVAI'),
(16, 'INSTALASI LISTRIK'),
(17, 'Caterpillar/FBR18-AZI'),
(18, 'Caterpillar/CPQYD35 '),
(19, 'Caterpillar/CPCD35 '),
(20, 'Ketel uap dapat berpindah'),
(21, 'POWOGAZ/MWN-65'),
(22, 'Keterangan Hasil  Pemeriksaan'),
(23, 'Izin Pengelolaan Limbah B3 Untuk Kegiatan  Penyimpanan Sementara'),
(24, 'Keputusan Kepala Disnakertrans Prov.Banten. Pengesahan P2K3'),
(25, 'Laporan P2K3'),
(26, 'Laporan UKL-UPL'),
(27, 'Laporan Pengelolaan Lingkungan Hidup'),
(28, 'Pemberian Daftar Ulang Surat Ijin Pengusahaan Air  tanah (SIPA)'),
(29, 'Emisi sumber tidak bergerak'),
(30, 'Annisa Maharani'),
(31, 'PT.GOLDEN HARVEST COCOA INDONESIA'),
(32, 'Pressure Gauge Merk Arita PG-16.4B-2'),
(33, 'Pressure Gauge Merk Arita PG-16.4B-1'),
(34, 'Pressure Safety Valve'),
(35, 'Pressure gauge Merk Arita'),
(36, 'SUNARDI '),
(37, 'Yuki'),
(38, 'Wartono'),
(39, 'Forklift/HELI/CPQYD35'),
(40, 'UM HP 200/100'),
(41, 'BEATER BLADE MILL SMM'),
(42, 'MESIN ROASTING/TORNADO 7500 RS'),
(43, 'MESIN WINNOWING/Winnower W.2400'),
(44, 'MESIN DRYING/ZLG Vibrayion Fluid Bed Dryer 0.9x6.0'),
(45, 'BUCKET ELEVATOR/CENTRIFUGAL BUCKET ELEVATORS'),
(46, 'PERTEK WWTP'),
(47, 'STORAGE TANK SILINDRIS VERTICAL'),
(48, 'STORAGE TANK SILINDRIS HORISONTAL'),
(49, 'T/MS21'),
(50, 'FXJ-6050'),
(51, 'CRI1200C-35/2000-90'),
(52, 'POV 590-16'),
(53, 'SUPERNOVA AMC-5500 P'),
(54, 'W45'),
(55, 'W105KK'),
(56, 'MOU Limbah B3'),
(57, 'KITO/SINGLE GIRDER'),
(58, 'PENERAPAN HIGIENE DAN SANITASI DI TEMPAT KERJA (KUDR)'),
(59, 'FAKTOR KIMIA DI TEMPAT KERJA'),
(60, 'FAKTOR FISIKA DI TEMPAT KERJA (KEBISINGAN)'),
(61, 'FAKTOR FISIKA DI TEMPAT KERJA (PENCAHAYAAN)'),
(62, 'FAKTOR FISIKA DI TEMPAT KERJA (IKLIM KERJA PANAS)'),
(63, 'FAKTOR FISIKA DI TEMPAT KERJA (GETARAN SELURUH TUBUH & GETARAN LENGAN DAN TANGAN)'),
(64, 'FAKTOR ERGONOMI DI TEMPAT KERJA '),
(65, 'FAKTOR PSIKOLOGI DI TEMPAT KERJA'),
(66, 'PENERAPAN HIGIENE DAN SANITASI DI TEMPAT KERJA (KEBERSIHAN BANGUNAN TEMPAT KERJA)'),
(67, 'PENERAPAN HIGIENE DAN SANITASI DI TEMPAT KERJA (FASILITAS KEBERSIHAN TOILET)'),
(68, 'PENERAPAN HIGIENE DAN SANITASI DI TEMPAT KERJA (FASILITAS LOKER)');

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `id` int(255) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `name`) VALUES
(1, 'HSE'),
(2, 'HRD'),
(3, 'UTY');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Guest'),
(3, 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `name`) VALUES
(1, '1'),
(2, '5'),
(3, '10'),
(4, '32164'),
(5, '200000940'),
(6, '1314117100'),
(7, '21200237064'),
(8, '1001030164/E07'),
(9, '1001030165/08'),
(10, '1001030170/04'),
(11, '1001030171/05'),
(12, '1001030173/06'),
(13, '1001030395/11'),
(14, '1001030444/J12'),
(15, '1001030446/14'),
(16, '1001030447/M15'),
(17, '10R180805/18'),
(18, '16446/unit 01'),
(19, '250353D3258/PLB01'),
(20, '250353D3259/PLB02'),
(21, '5739-03-0001'),
(22, '6514920/SKL/8VD36/24 A-1'),
(23, '7.10'),
(24, 'AHLI K3 SPESIALIS LISTRIK/Yuki'),
(25, 'AHLI K3 UMUM'),
(26, 'BB.1'),
(27, 'C10007003'),
(28, 'C10031004'),
(29, 'C10031005'),
(30, 'DAT Controler Plus 45/AT-001G'),
(31, 'DAT Controler Plus 60 SN'),
(32, 'DN50'),
(33, 'DN80'),
(34, 'Finished Goods'),
(35, 'HQ20190408049362'),
(36, 'HQ20190408049369'),
(37, 'HQ20200305007514'),
(38, 'HQ20200305007516'),
(39, 'HSE'),
(40, 'L7-10'),
(41, 'L7-8'),
(42, 'Operator K3 Motor Diesel klas I/wartono'),
(43, 'PLT 05300'),
(44, 'Produksi'),
(45, 'RM'),
(46, 'SMM 800/SMM 4'),
(47, 'SROYKO006-03'),
(48, 'TS2432193-2013'),
(49, 'Unit 03');

-- --------------------------------------------------------

--
-- Table structure for table `status_doc`
--

CREATE TABLE `status_doc` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_doc`
--

INSERT INTO `status_doc` (`id`, `name`) VALUES
(5, 'active'),
(6, 'non active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_department` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `password`, `id_department`, `id_role`) VALUES
(1, 'Admin', 'Admin', 'admin', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`) VALUES
(1, 'BUCINDO MITRA SINERGI, PT'),
(2, 'CALTESYS INDONESIA, PT'),
(3, 'DHIYA DUTA INSPEKSI, PT'),
(4, 'INTI SURYA LABORATORIUM, PT'),
(5, 'TEHNIK DAYA BERSAMA,PT.'),
(6, 'UNIVERSAL ECO PASIFIC, PT'),
(7, 'UPAYA RIKSA PATRA, PT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_institution` (`id_institution`,`id_model`,`id_series`,`id_area`,`id_vendor`,`id_pic`,`id_location`),
  ADD KEY `id_pic` (`id_pic`),
  ADD KEY `id_model` (`id_model`),
  ADD KEY `id_series` (`id_series`),
  ADD KEY `id_location` (`id_location`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `id_vendor` (`id_vendor`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `document_files`
--
ALTER TABLE `document_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_document` (`id_document`);

--
-- Indexes for table `inspection_request`
--
ALTER TABLE `inspection_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vendor` (`id_vendor`),
  ADD KEY `id_vendor2` (`id_vendor2`);

--
-- Indexes for table `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_documents`
--
ALTER TABLE `log_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_doc`
--
ALTER TABLE `status_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `id_department` (`id_department`),
  ADD KEY `id_role` (`id_role`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `document_files`
--
ALTER TABLE `document_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inspection_request`
--
ALTER TABLE `inspection_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_documents`
--
ALTER TABLE `log_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `status_doc`
--
ALTER TABLE `status_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`id_pic`) REFERENCES `pics` (`id`),
  ADD CONSTRAINT `documents_ibfk_2` FOREIGN KEY (`id_institution`) REFERENCES `institutions` (`id`),
  ADD CONSTRAINT `documents_ibfk_3` FOREIGN KEY (`id_model`) REFERENCES `models` (`id`),
  ADD CONSTRAINT `documents_ibfk_4` FOREIGN KEY (`id_series`) REFERENCES `series` (`id`),
  ADD CONSTRAINT `documents_ibfk_5` FOREIGN KEY (`id_location`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `documents_ibfk_6` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `documents_ibfk_7` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id`),
  ADD CONSTRAINT `documents_ibfk_8` FOREIGN KEY (`id_vendor`) REFERENCES `vendors` (`id`),
  ADD CONSTRAINT `documents_ibfk_9` FOREIGN KEY (`id_status`) REFERENCES `status_doc` (`id`);

--
-- Constraints for table `document_files`
--
ALTER TABLE `document_files`
  ADD CONSTRAINT `document_files_ibfk_1` FOREIGN KEY (`id_document`) REFERENCES `documents` (`id`);

--
-- Constraints for table `inspection_request`
--
ALTER TABLE `inspection_request`
  ADD CONSTRAINT `inspection_request_ibfk_1` FOREIGN KEY (`id_vendor`) REFERENCES `vendors` (`id`),
  ADD CONSTRAINT `inspection_request_ibfk_2` FOREIGN KEY (`id_vendor2`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_department`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
