-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Waktu pembuatan: 26 Sep 2025 pada 08.19
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhconstructionrev`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_klien`
--

CREATE TABLE `data_klien` (
  `DataKlien_ID` varchar(5) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_klien`
--

INSERT INTO `data_klien` (`DataKlien_ID`, `Nama`, `Tanggal_Lahir`, `Gender`) VALUES
('DK001', 'WIWI', '1964-04-05', 'PEREMPUAN'),
('DK002', 'JASON', '2002-06-01', 'LAKI-LAKI'),
('DK003', 'CALVIN', '2000-04-03', 'LAKI-LAKI'),
('DK004', 'KEVIN', '1986-11-10', 'LAKI-LAKI'),
('DK005', 'LINDA', '1986-11-10', 'PEREMPUAN'),
('DK006', 'SONNY', '2000-08-04', 'LAKI-LAKI'),
('DK007', 'ANDREW', '1997-02-15', 'LAKI-LAKI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `field`
--

CREATE TABLE `field` (
  `Field_ID` varchar(5) NOT NULL,
  `Field_Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `field`
--

INSERT INTO `field` (`Field_ID`, `Field_Name`) VALUES
('F001', 'DESIGN'),
('F002', 'BUILD INTERIOR'),
('F003', 'DESIGN LIGHTING');

-- --------------------------------------------------------

--
-- Struktur dari tabel `material`
--

CREATE TABLE `material` (
  `DM_ID` varchar(5) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `material`
--

INSERT INTO `material` (`DM_ID`, `Nama`) VALUES
('DM001', 'SEALANT CLEAR'),
('DM002', 'HOLLOW 2 X 4 X 0,3'),
('DM003', 'STUCOAT CLEAR 1 L'),
('DM004', 'STUCCO SEMEN EXPOSE '),
('DM005', 'CAT DASAR TEMBOK STU'),
('DM006', 'LAMPU SOROT'),
('DM007', 'SEKRUP ROOFING CAMEL'),
('DM008', 'CAT ANTI BOCOR 20 L '),
('DM009', 'KARPET TALANG 1,1 M'),
('DM010', 'POMPA CELUP'),
('DM011', 'SEMEN PUTIH 1 KG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `material_price`
--

CREATE TABLE `material_price` (
  `MP_ID` varchar(5) NOT NULL,
  `DM_ID` varchar(5) DEFAULT NULL,
  `DS_ID` varchar(5) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `material_price`
--

INSERT INTO `material_price` (`MP_ID`, `DM_ID`, `DS_ID`, `Price`) VALUES
('MP001', 'DM001', 'DS001', 16563),
('MP002', 'DM002', 'DS002', 11500),
('MP003', 'DM003', 'DS003', 128000),
('MP004', 'DM004', 'DS003', 158000),
('MP005', 'DM005', 'DS003', 188000),
('MP006', 'DM006', 'DS004', 127710),
('MP007', 'DM007', 'DS005', 92500),
('MP008', 'DM008', 'DS003', 660560),
('MP009', 'DM009', 'DS006', 610000),
('MP010', 'DM010', 'DS007', 528200),
('MP011', 'DM011', 'DS008', 5000),
('MP012', 'DM011', 'DS009', 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerja`
--

CREATE TABLE `pekerja` (
  `DataPekerja_ID` varchar(5) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `position` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pekerja`
--

INSERT INTO `pekerja` (`DataPekerja_ID`, `Nama`, `Tanggal_Lahir`, `Gender`, `position`) VALUES
('PD001', 'DUSTIN', '2002-03-23', 'LAKI-LAKI', 'CHIEF EXECUTIVE OFFICER'),
('PD002', 'DERICK', '2004-12-12', 'LAKI-LAKI', 'CHIEF OPERATION OFFICER'),
('PD003', 'NIWAN', '1973-11-02', 'LAKI-LAKI', 'GENERAL PROJECT MANAGER'),
('PD004', 'LILIK', '1973-05-06', 'LAKI-LAKI', 'CONSTRUCTION FOREMAN'),
('PD005', 'VINCENT THEDDY', '2002-06-10', 'LAKI-LAKI', 'STRUCTURE ENGINEER'),
('PD006', 'NIKOLAS REYNALDO', '1997-10-05', 'LAKI-LAKI', 'HEAD OF DESIGN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `Project_ID` varchar(5) NOT NULL,
  `Project_Name` varchar(20) DEFAULT NULL,
  `Project_Status` varchar(20) DEFAULT NULL,
  `Tanggal_Mulai` date DEFAULT NULL,
  `Tanggal_Berakhir` date DEFAULT NULL,
  `Project_Manager` varchar(5) DEFAULT NULL,
  `Nama_Klien` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`Project_ID`, `Project_Name`, `Project_Status`, `Tanggal_Mulai`, `Tanggal_Berakhir`, `Project_Manager`, `Nama_Klien`) VALUES
('DP001', 'Karawaci', 'Done', '2023-08-29', '2023-09-21', 'PD001', 'DK001'),
('DP002', 'Atap Cina', 'Done', '2024-06-23', '2024-06-30', 'PD001', 'DK002'),
('DP003', 'Mr.Kevin', 'Done', '2024-09-30', '2024-11-01', 'PD002', 'DK003'),
('DP004', 'Calvin', 'Done', '2024-11-09', '2024-11-21', 'PD002', 'DK004'),
('DP005', 'Linda', 'Done', '2024-08-29', '2024-10-06', 'PD002', 'DK005'),
('DP006', 'Molla', 'Done', '2024-04-01', '2024-05-08', 'PD002', 'DK006'),
('DP007', 'Bekasi', 'Rejected', '2024-06-04', '2024-08-10', 'PD002', 'DK007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projectsubcon`
--

CREATE TABLE `projectsubcon` (
  `Project_ID` varchar(5) DEFAULT NULL,
  `SubCon_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `projectsubcon`
--

INSERT INTO `projectsubcon` (`Project_ID`, `SubCon_ID`) VALUES
('DP003', 'DS003'),
('DP004', 'DS001'),
('DP004', 'DS002'),
('DP006', 'DS004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_material_price`
--

CREATE TABLE `project_material_price` (
  `Project_ID` varchar(5) DEFAULT NULL,
  `MP_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `project_material_price`
--

INSERT INTO `project_material_price` (`Project_ID`, `MP_ID`) VALUES
('DP002', 'MP002'),
('DP006', 'MP012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subconfield`
--

CREATE TABLE `subconfield` (
  `SubCon_ID` varchar(5) DEFAULT NULL,
  `Field_ID` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `subconfield`
--

INSERT INTO `subconfield` (`SubCon_ID`, `Field_ID`) VALUES
('DS001', 'F001'),
('DS001', 'F002'),
('DS002', 'F001'),
('DS002', 'F002'),
('DS003', 'F001'),
('DS004', 'F002'),
('DS005', 'F003'),
('DS005', 'F001'),
('DS001', 'F001'),
('DS001', 'F002'),
('DS002', 'F001'),
('DS002', 'F002'),
('DS003', 'F001'),
('DS004', 'F002'),
('DS005', 'F003'),
('DS005', 'F001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcontractor`
--

CREATE TABLE `subcontractor` (
  `SubCon_ID` varchar(5) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `subcontractor`
--

INSERT INTO `subcontractor` (`SubCon_ID`, `Nama`) VALUES
('DS001', 'Nora Studio'),
('DS002', 'SiBamboo'),
('DS003', 'Ardest'),
('DS004', 'LogoFurni'),
('DS005', 'Fahmi Lighting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `DS_ID` varchar(5) NOT NULL,
  `Nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`DS_ID`, `Nama`) VALUES
('DS001', 'IKA OFFICIAL'),
('DS002', 'CM BAJA'),
('DS003', 'PUFFIN PAINT'),
('DS004', 'LED LIGHTING STORE'),
('DS005', 'N88 SANITARY'),
('DS006', 'DEDY DHAR'),
('DS007', 'ALATTEKNIKGLODOK'),
('DS008', 'TB.MAJU JAYA'),
('DS009', 'SINAR LAUT JAYA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_klien`
--
ALTER TABLE `data_klien`
  ADD PRIMARY KEY (`DataKlien_ID`);

--
-- Indeks untuk tabel `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indeks untuk tabel `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`DM_ID`);

--
-- Indeks untuk tabel `material_price`
--
ALTER TABLE `material_price`
  ADD PRIMARY KEY (`MP_ID`),
  ADD KEY `DM_ID` (`DM_ID`),
  ADD KEY `DS_ID` (`DS_ID`);

--
-- Indeks untuk tabel `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`DataPekerja_ID`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`),
  ADD KEY `Nama_Klien` (`Nama_Klien`),
  ADD KEY `Project_Manager` (`Project_Manager`);

--
-- Indeks untuk tabel `projectsubcon`
--
ALTER TABLE `projectsubcon`
  ADD KEY `Project_ID` (`Project_ID`),
  ADD KEY `SubCon_ID` (`SubCon_ID`);

--
-- Indeks untuk tabel `project_material_price`
--
ALTER TABLE `project_material_price`
  ADD KEY `Project_ID` (`Project_ID`),
  ADD KEY `MP_ID` (`MP_ID`);

--
-- Indeks untuk tabel `subconfield`
--
ALTER TABLE `subconfield`
  ADD KEY `SubCon_ID` (`SubCon_ID`),
  ADD KEY `Field_ID` (`Field_ID`);

--
-- Indeks untuk tabel `subcontractor`
--
ALTER TABLE `subcontractor`
  ADD PRIMARY KEY (`SubCon_ID`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`DS_ID`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `material_price`
--
ALTER TABLE `material_price`
  ADD CONSTRAINT `material_price_ibfk_1` FOREIGN KEY (`DM_ID`) REFERENCES `material` (`DM_ID`),
  ADD CONSTRAINT `material_price_ibfk_2` FOREIGN KEY (`DS_ID`) REFERENCES `supplier` (`DS_ID`);

--
-- Ketidakleluasaan untuk tabel `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Nama_Klien`) REFERENCES `data_klien` (`DataKlien_ID`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`Project_Manager`) REFERENCES `pekerja` (`DataPekerja_ID`);

--
-- Ketidakleluasaan untuk tabel `projectsubcon`
--
ALTER TABLE `projectsubcon`
  ADD CONSTRAINT `projectsubcon_ibfk_1` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`Project_ID`),
  ADD CONSTRAINT `projectsubcon_ibfk_2` FOREIGN KEY (`SubCon_ID`) REFERENCES `subcontractor` (`SubCon_ID`);

--
-- Ketidakleluasaan untuk tabel `project_material_price`
--
ALTER TABLE `project_material_price`
  ADD CONSTRAINT `project_material_price_ibfk_1` FOREIGN KEY (`Project_ID`) REFERENCES `project` (`Project_ID`),
  ADD CONSTRAINT `project_material_price_ibfk_2` FOREIGN KEY (`MP_ID`) REFERENCES `material_price` (`MP_ID`);

--
-- Ketidakleluasaan untuk tabel `subconfield`
--
ALTER TABLE `subconfield`
  ADD CONSTRAINT `subconfield_ibfk_1` FOREIGN KEY (`SubCon_ID`) REFERENCES `subcontractor` (`SubCon_ID`),
  ADD CONSTRAINT `subconfield_ibfk_2` FOREIGN KEY (`Field_ID`) REFERENCES `field` (`Field_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
