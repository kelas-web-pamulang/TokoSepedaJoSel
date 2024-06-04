-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2024 pada 15.18
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
-- Database: `db_sepeda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sport'),
(2, 'Touring'),
(3, 'City'),
(4, 'Kids');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sepeda`
--

CREATE TABLE `sepeda` (
  `id_sepeda` int(11) NOT NULL,
  `nama_sepeda` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `tahun_produksi` int(11) NOT NULL,
  `id_tipe` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sepeda`
--

INSERT INTO `sepeda` (`id_sepeda`, `nama_sepeda`, `merk`, `tahun_produksi`, `id_tipe`, `id_kategori`, `stok`, `harga`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pixy', 'Gunung', 2023, 2, 3, 12, 5000000.00, '2024-06-04 05:11:37', '2024-06-04 19:31:43', '2024-06-04 19:31:43'),
(2, 'Sepeda Gunung Aviator', 'Aviator', 2022, 2, 2, 5, 2000000.00, '2024-06-04 05:11:37', '2024-06-04 19:18:07', NULL),
(3, 'Uwinfly', 'DF7', 2021, 4, 3, 7, 3500000.00, '2024-06-04 05:11:37', '2024-06-04 19:16:23', NULL),
(4, 'Polygon', 'P8', 2023, 2, 3, 3, 1200000.00, '2024-06-04 05:11:37', '2024-06-04 19:16:36', NULL),
(5, 'Wimcycle', 'Mountain Bicycle', 2024, 1, 2, 12, 900000.00, '2024-06-04 19:14:34', '2024-06-04 05:14:34', NULL),
(6, 'Sepeda Gunung Avand', 'Avand', 2022, 3, 4, 12, 8000000.00, '2024-06-04 19:17:49', '2024-06-04 05:17:49', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe`
--

CREATE TABLE `tipe` (
  `id_tipe` int(11) NOT NULL,
  `nama_tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tipe`
--

INSERT INTO `tipe` (`id_tipe`, `nama_tipe`) VALUES
(1, 'Mountain Bike'),
(2, 'Road Bike'),
(3, 'Hybrid Bike'),
(4, 'Electric Bike');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `sepeda`
--
ALTER TABLE `sepeda`
  ADD PRIMARY KEY (`id_sepeda`);

--
-- Indeks untuk tabel `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`id_tipe`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sepeda`
--
ALTER TABLE `sepeda`
  MODIFY `id_sepeda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tipe`
--
ALTER TABLE `tipe`
  MODIFY `id_tipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
