-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2023 pada 06.07
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_program_poin_siswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hubungan`
--

CREATE TABLE `tb_hubungan` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `status_hub_anak` char(50) NOT NULL,
  `keterangan` char(150) NOT NULL,
  `status_ortu` char(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_hubungan`
--

INSERT INTO `tb_hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(1, 1, 1, 'TIRI', 'Hidup', 'Kandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jurusan` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `nama`, `jurusan`) VALUES
(1, 'ANDI', 'IPS'),
(2, 'BUDI', 'IPA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`) VALUES
('admin', 'admin'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ortu`
--

CREATE TABLE `tb_ortu` (
  `id` int(10) NOT NULL,
  `nik` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `pendidikan` char(60) NOT NULL,
  `pekerjaan` char(60) NOT NULL,
  `telp` char(16) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `agama` char(15) NOT NULL,
  `is_active` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_ortu`
--

INSERT INTO `tb_ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jk`, `agama`, `is_active`) VALUES
(1, '1234', 'Kevin', 'S2', 'Direktur', '08873576252', 'Banjarmasin', 'L', 'Islam', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poin`
--

CREATE TABLE `tb_poin` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `nama_poin` char(100) NOT NULL,
  `bobot` int(20) NOT NULL,
  `jenis` char(50) NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_poin`
--

INSERT INTO `tb_poin` (`id`, `siswa_id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 1, 'Prestasi', 55, 'Siswa Teladan', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_semester`
--

CREATE TABLE `tb_semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `poin_id` int(10) NOT NULL,
  `wali_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `kelas_id` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` varchar(20) NOT NULL,
  `status` char(20) NOT NULL,
  `tingkat_kelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(10) NOT NULL,
  `nis` char(20) NOT NULL,
  `nisn` char(20) NOT NULL,
  `nama_siswa` varchar(60) NOT NULL,
  `nik` char(20) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `telp`, `hp`, `status`) VALUES
(7, '1124', '1124', 'Ranti', '1124', 'Barito Kuala', '21-08-2006', 'P', 'Barito Kuala', '1234536464', '0856346622', 'Siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(50) NOT NULL,
  `status` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`, `status`) VALUES
(2, 'admin1', 'admin1', '12', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id` int(10) NOT NULL,
  `nik` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `pendidikan` char(60) NOT NULL,
  `telp` char(16) NOT NULL,
  `mapel` char(30) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id`, `nik`, `nama`, `jk`, `pendidikan`, `telp`, `mapel`, `alamat`, `status`) VALUES
(1, '1234', 'Dani', 'L', 'S1', '08837673', 'IPS', 'Banjarmasin', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_poin`
--
ALTER TABLE `tb_poin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_hubungan`
--
ALTER TABLE `tb_hubungan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_ortu`
--
ALTER TABLE `tb_ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_poin`
--
ALTER TABLE `tb_poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_semester`
--
ALTER TABLE `tb_semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
