-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2021 pada 12.50
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'Staff Marketing', '4000000', '800000', '500000'),
(2, 'Staff Mesin', '3500000', '800000', '400000'),
(3, 'Staff Administrasi', '4500000', '800000', '400000'),
(4, 'Manager', '6000000', '1200000', '800000'),
(5, 'Mandor Lapangan', '2500000', '500000', '250000'),
(8, 'Admin', '2000000', '1200000', '400000'),
(9, 'Staff IT', '3500000', '750000', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(1, '082021', '1234567891', 'Vicky', 'laki-laki', 'Manager', 20, 1, 1),
(2, '012021', '123456784', 'Aqqq', 'perempuan', 'Staff Administrasi', 22, 1, 2),
(3, '012021', '166654334', 'Ari', 'Laki-laki', 'Mandor Lapangan', 27, 1, 0),
(4, '012021', '123456666', 'Putra', 'Laki-laki', 'Staff Mesin', 20, 7, 1),
(5, '012021', '12789487263', 'Ridho', 'Laki-laki', 'Admin', 17, 3, 2),
(7, '012021', '1234567891', 'Vicky', 'laki-laki', 'Manager', 17, 2, 1),
(8, '022021', '123456784', 'Aqqq', 'perempuan', 'Staff Administrasi', 19, 2, 0),
(9, '022021', '166654334', 'Ari', 'Laki-laki', 'Mandor Lapangan', 22, 2, 1),
(10, '022021', '123456666', 'Putra', 'Laki-laki', 'Staff Mesin', 24, 1, 0),
(11, '022021', '12789487263', 'Ridho', 'Laki-laki', 'Admin', 26, 0, 1),
(12, '022021', '1234567891', 'Vicky', 'laki-laki', 'Manager', 27, 0, 1),
(13, '012021', '18180021', 'Putri', 'perempuan', 'Staff Administrasi', 22, 1, 1),
(14, '012021', '13457892', 'Panjul', 'Laki-laki', 'Mandor Lapangan', 11, 1, 1),
(15, '012021', '13335243', 'Rio', 'Laki-laki', 'Manager', 16, 4, 1),
(16, '032021', '166654334', 'Ari', 'Laki-laki', 'Mandor Lapangan', 20, 3, 1),
(17, '032021', '13457892', 'Panjul', 'Laki-laki', 'Mandor Lapangan', 23, 1, 2),
(18, '032021', '123456666', 'Putra', 'Laki-laki', 'Staff Mesin', 0, 0, 0),
(19, '032021', '18180021', 'Putri', 'perempuan', 'Staff Administrasi', 0, 0, 0),
(20, '032021', '12789487263', 'Ridho', 'Laki-laki', 'Admin', 0, 0, 0),
(21, '032021', '13335243', 'Rio', 'Laki-laki', 'Manager', 0, 0, 0),
(22, '012021', '14536377', 'Heri', 'Laki-laki', 'Staff IT', 27, 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(8, '123456666', 'Putra', 'putra', '21f1256217c52a6cdaa51f34bf1b4131', 'Laki-laki', 'Staff Mesin', '2021-01-18', 'Pegawai Tetap', 'gambar31.png', 2),
(11, '18180021', 'Putri', 'putri', '82682943a05de360abb183236c632bd6', 'perempuan', 'Staff Administrasi', '2021-01-16', 'Pegawai Tetap', 'mahasiswa.jpg', 1),
(12, '13457892', 'Panjul', 'panjul', '71fd4287dbf8d7ae96dbaf856c538423', 'Laki-laki', 'Mandor Lapangan', '2021-01-20', 'Pegawai Tetap', 'kartun2.jpg', 2),
(13, '13335243', 'Rio', 'rio', 'f237aef579ff90dcd9b528115cb25c32', 'Laki-laki', 'Manager', '2021-01-19', 'Pegawai Tetap', 'student.png', 2),
(14, '14536377', 'Heri', 'heri', 'af25458116a2464f9401870dff1e11f5', 'Laki-laki', 'Staff IT', '2021-01-15', 'Pegawai Tetap', 'kartun3.jpg', 2),
(20, '17072001', 'Vicky', 'vicky', '963e23b908a071e03d6bae3e36ec7d14', 'Laki-laki', 'Staff Marketing', '2021-01-18', 'Pegawai Tetap', 'kyy2.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpha', 150000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
