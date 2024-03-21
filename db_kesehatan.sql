-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 12:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kesehatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `isi_berita` text NOT NULL,
  `gambar_berita` varchar(500) NOT NULL,
  `tgl_berita` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi_berita`, `gambar_berita`, `tgl_berita`) VALUES
(1, 'Mental Healt', 'Kesehatan mental merujuk pada keadaan kesejahteraan psikologis seseorang, yang mencakup bagaimana individu merasa, berpikir, dan bertindak dalam kehidupan sehari-hari. Ini melibatkan kemampuan seseorang untuk mengatasi stres, mengelola emosi, menjaga hubungan yang sehat, dan membuat keputusan yang tepat. Kesehatan mental yang baik penting untuk menjalani kehidupan yang bermakna dan memuaskan, serta memungkinkan individu untuk berkontribusi secara positif dalam masyarakat. Ini juga melibatkan kesadaran terhadap kondisi mental seseorang, pemahaman tentang peran dukungan sosial, dan penggunaan strategi koping yang efektif untuk mengatasi tantangan yang mungkin timbul.', 'liver.jpg', '2024-03-18 11:08:27'),
(2, 'Lungs', 'Paru-paru adalah organ utama dalam sistem pernapasan manusia yang terletak di dalam dada. Fungsinya adalah untuk mengambil oksigen dari udara yang dihirup dan memasukkannya ke dalam aliran darah, serta mengeluarkan karbon dioksida dari aliran darah ke udara saat bernapas. Paru-paru terdiri dari berbagai struktur seperti bronkus, bronkiolus, dan alveoli yang bertanggung jawab untuk pertukaran gas yang vital untuk kehidupan. Selain itu, paru-paru juga memiliki peran penting dalam menjaga keseimbangan asam-basa dalam tubuh dan membantu menjaga suhu tubuh yang stabil.', 'lungs.jpg', '2024-03-18 11:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id`, `nama`, `gambar`) VALUES
(1, 'Medicine', 'medicine.jpeg'),
(2, 'Vaccine', 'vaccine.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `no_bp` int(15) NOT NULL,
  `no_hp` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `tanggal_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `no_bp`, `no_hp`, `email`, `tanggal_input`) VALUES
(1, 'jini', 2111081004, 2147483647, 'jini@gmail.com', '2024-03-18 20:47:34'),
(2, 'jono', 2111081009, 2147483647, 'jono@gmail.com', '2024-03-18 21:09:39'),
(3, 'gery', 2111083004, 2147483647, 'gery@gmail.com', '2024-03-18 21:10:55'),
(4, 'noverino', 2111082004, 2147483647, 'noverino@gmail.com', '2024-03-18 21:19:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `tanggal_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `fullname`, `tanggal_input`) VALUES
(1, 'bima1', 'Bima1@gmail.com', '202cb962ac59075b964b07152d234b70', 'Bima Lintang', '2024-03-18 16:41:53'),
(2, 'JinMin', 'jinmin@gmail.com', '202cb962ac59075b964b07152d234b70', 'mimin', '2024-03-18 23:29:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
