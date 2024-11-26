-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2024 pada 08.11
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ptbendicar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `besaran_denda` int(12) NOT NULL,
  `id_denda` int(8) NOT NULL,
  `jenis_denda` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `harga_sewa` int(11) NOT NULL,
  `jenis` char(15) NOT NULL,
  `merek` char(15) NOT NULL,
  `no_polisi` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE `pemilik` (
  `id_petugas` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_telp` int(12) NOT NULL,
  `status/level` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `alamat` char(25) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_ktp` int(16) NOT NULL,
  `no_telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`alamat`, `nama`, `no_ktp`, `no_telp`) VALUES
('marga punduh', 'Agus Rizal', 23753105, 2147483647),
('marga punduh', 'Agus Rizal', 23753105, 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewaan`
--

CREATE TABLE `penyewaan` (
  `id` int(11) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_ktp` varchar(50) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `jenis_kendaraan` varchar(50) DEFAULT NULL,
  `tanggal_penyewaan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewaan`
--

INSERT INTO `penyewaan` (`id`, `alamat`, `nama`, `no_ktp`, `no_telp`, `jenis_kendaraan`, `tanggal_penyewaan`) VALUES
(1, 'jl ratu dibala', 'GALIH AZZAHRA', '124', '356', 'Alphard', '2024-11-24 17:00:00'),
(2, 'jln paring', 'Azizi Gilang', '567', '678', 'Alphard', '2024-11-24 17:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(12) NOT NULL,
  `nama` char(20) NOT NULL,
  `no_telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `kd_kembali` int(8) NOT NULL,
  `kd_pinjam` int(8) NOT NULL,
  `kondisi` char(20) NOT NULL,
  `tgl_kembali` int(8) NOT NULL,
  `tgl_pinjam` int(8) NOT NULL,
  `total_bayar` char(12) NOT NULL,
  `total_denda` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penyewaan`
--
ALTER TABLE `penyewaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
