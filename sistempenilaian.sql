-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2020 pada 18.19
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistempenilaian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'Matematika'),
(3, 'IPA'),
(4, 'IPS'),
(5, 'Bahasa Inggris'),
(6, 'PKN'),
(7, 'Agama'),
(8, 'Seni Budaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_siswa`, `id_mapel`, `nilai`) VALUES
(1, 1, 1, 80),
(2, 1, 2, 70),
(3, 1, 5, 70),
(4, 1, 6, 80),
(5, 1, 3, 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nama_panggilan` varchar(10) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `tempat_lahir` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nama`, `nama_panggilan`, `jk`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `gambar`) VALUES
(1, 99007432, 'Nurul Afifah', 'Afifah', 'P', 'Tiakar', '2020-01-12', 'Parupuk Tabing', '1.jpg'),
(2, 874537, 'Abbas Yahya', 'Abbas', 'L', 'Padang', '2020-01-11', 'Pauh', '2.jpg'),
(3, 887697545, 'Angelina Putri Rahmadhani', 'Angel', 'P', 'Jakarta', '2020-01-08', 'Permata Indah', '3.jpg'),
(4, 345234567, 'Karim Wahid Al-Aziz', 'Wahid', 'L', 'Bandung', '2019-12-12', 'Ampang', '4.jpg'),
(5, 26534456, 'Galih Purnama Ramadan', 'Galih', 'L', 'Aceh', '2019-09-11', 'Siteba', '5e2838e0068c4.jpg'),
(6, 25689641, 'Sabrina Putri', 'Sabrina', 'P', 'Bukittingg', '2012-12-12', 'Lubuk Minturun', '5e2aeea3eb15f.jpg'),
(9, 1, 'afey', 'a', 'P', 'Bungo', '2020-01-24', 'Ampang', '5e2bc3090463c.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$rD1Hf.YM3Ta2h/pWBZbpkeuwGUF1mzjyS0gqLz7JDS8mFDB2IqRmm'),
(2, 'admin2', '$2y$10$0/Uhq1Vo8PoEcVCOF5j/Nu5ayVYRFzQO0E7EcxPK4B6ZqoJ8XvlIO'),
(3, 'admin3', '$2y$10$XamL7tCOLJGyY7JVZqclxuYaauKn5H53MPrm2hL81uR0XePFQY7Bi'),
(4, 'afi', '$2y$10$KUDtU1u/ZQ58MVG7IpSIlez2o9rqUQkqjubmd4LTycjoVuw/lUD9q'),
(5, 'admin4', '$2y$10$EHPc92uMT4zPm6fH0P1EYe4TcG4HcQRL7TDCTVy7LxI5umBqwi.eu'),
(6, 'afifah', '$2y$10$myk4YyOKgkmA9zKLt5Cb1.gcglCzoHUQEUw/0cviJJD2uD5F1AW2a');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_siswa` (`id_siswa`,`id_mapel`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
