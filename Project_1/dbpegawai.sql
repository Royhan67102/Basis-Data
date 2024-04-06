-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2024 pada 09.30
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(4, 'IT'),
(2, 'Keuangan'),
(3, 'Marketing'),
(1, 'SDM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(3, 'Asisten Manajer'),
(1, 'Direktur'),
(2, 'Manajer'),
(4, 'Staff');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `iddivisi` int(11) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `berat_badan` float NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tmp_lahir`, `tgl_lahir`, `iddivisi`, `idjabatan`, `alamat`, `berat_badan`, `umur`) VALUES
(1, '10001', 'Udin Seblak', 'Laki-laki', 'Bogor', '1999-07-03', 1, 2, 'Cianjur', 53.27, 24),
(2, '10002', 'Vladilena Milize', 'Perempuan', 'Bogor', '1993-12-29', 1, 3, 'Moscow', 132.5, 30),
(3, '10003', 'Cattleya Baudelaire', 'Perempuan', 'Jakarta', '1998-12-29', 1, 4, 'Berlin', 92.72, 25),
(4, '10004', 'MUHAMMAD Kheril', 'Laki-laki', 'Depok', '1978-02-12', 1, 2, 'Berlin', 106.09, 46),
(5, '10005', 'Dayana', 'Perempuan', 'Depok', '2002-11-07', 1, 3, 'Moscow', 112.27, 21),
(6, '10006', 'Ntin', 'Perempuan', 'Garut', '2003-09-27', 2, 1, 'Bandung', 103.08, 20),
(7, '10007', 'MUHAMMAD Syahril', 'Laki-laki', 'Indonesia', '2003-09-27', 2, 2, 'Bogor', 128.61, 20),
(8, '10008', 'Kelvin Uhuy', 'Laki-laki', 'Jakarta', '2005-07-28', 2, 1, 'Jepang', 103.82, 18),
(9, '10009', 'Adis Asep', 'Laki-laki', 'Indonesia', '2003-10-04', 2, 4, 'Bogor', 83.26, 20),
(10, '10010', 'Dava Sayur Lodeh', 'Laki-laki', 'Indonesia', '2003-07-20', 2, 4, 'Bogor', 54.83, 20),
(11, '10011', 'Ridwan Telur Gulung', 'Laki-laki', 'Indonesia', '0000-00-00', 3, 4, 'Bogor', 64.36, 0),
(12, '10012', 'Agus Roti Bakar', 'Laki-laki', 'Indonesia', '2003-04-04', 3, 3, 'Bogor', 107.31, 21),
(13, '10013', 'Haekal Santoso', 'Laki-laki', 'Indonesia', '2002-01-24', 3, 3, 'Jakarta', 113.48, 22),
(14, '10014', 'Indri Cecil', 'Perempuan', 'Jakarta', '1989-05-09', 3, 4, 'Bogor', 105.46, 20),
(15, '10015', 'Bagas', 'Laki-laki', 'Indonesia', '2002-10-16', 3, 3, 'Jogja', 136.87, 21),
(16, '10016', 'Fathur', 'Laki-laki', 'Jakarta', '1970-07-28', 4, 4, 'Jakarta', 137.96, 53),
(17, '10017', 'Nizar Kebab', 'Perempuan', 'Indonesia', '1988-06-07', 4, 4, 'Bilabong', 139.2, 19),
(18, '10018', 'Farida Rabbani Virdynata', 'Perempuan', 'Indonesia', '2004-06-09', 4, 1, 'Malang', 52.13, 19);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD KEY `iddivisi` (`iddivisi`),
  ADD KEY `idjabatan` (`idjabatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`iddivisi`) REFERENCES `divisi` (`id`),
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`idjabatan`) REFERENCES `jabatan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
