-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Oca 2023, 21:24:32
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `library`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Prizren Kutuphanesi', 'Prizrenkutuphane@gmail.com', 'Prizren kutuphanesi', '552a634784e2d0180791cd6c8cf35f79', '2023-01-12 21:34:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Charles Dickens', '2023-01-22 07:23:03', '2023-01-12 21:49:06'),
(2, ' J. R. R. Tolkien', '2023-01-22 07:23:03', '2023-01-12 21:51:59'),
(3, ' Antoine de Saint-Exupery', '2022-01-22 07:23:03', '2023-01-12 21:54:46'),
(16, 'Dan Brown', '2023-01-12 21:56:48', NULL),
(17, ' Richard Bach', '2023-01-12 21:57:56', NULL),
(18, 'Matt Haig', '2023-01-12 22:22:04', NULL),
(19, 'Jose Mauro De Vasconcelos', '2023-01-12 22:23:57', NULL),
(20, 'Jean Lopez', '2023-01-12 22:27:21', NULL),
(21, 'Ray Bradbury', '2023-01-12 22:31:28', NULL),
(22, ' Fahrettin Erdinç', '2023-01-12 22:34:47', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'iki Sehrin Hikayesi', 4, 1, '9789750738869', '44.20', 'd5fa63398245a06a064c90b662693f62jpeg', 0, '2022-01-22 07:23:03', '2023-01-14 10:50:16'),
(5, 'Yüzüklerin Efendisi', 6, 1, ' 9789753423472', '45.00', 'f164b33b773763290086727d0864070ajpeg', 0, '2022-01-21 16:42:11', '2023-01-14 10:46:23'),
(12, 'Küçük Prens', 5, 3, '9789750724435', '30.00', '18872a78dbb50d2e4950f0825ae8201b.jpg', 0, '2023-01-12 21:54:34', '2023-01-12 22:50:03'),
(13, 'Da Vinci Sifresi', 4, 16, '9789752104037', '84.00', 'deeb5a662f6e4e7bdf44521208441ca4.jpg', NULL, '2023-01-12 21:56:43', '2023-01-12 21:57:02'),
(14, 'Marti Jonathan Livingston', 10, 17, '9789944829670', '19.20', '59d9089b778a31639ecf26041a1e70b3.jpg', NULL, '2023-01-12 21:59:23', '2023-01-12 22:00:03'),
(15, 'Gece Yarisi Kütüphanesi', 6, 18, '9786051981833', '58.80', '4926ceff3e80cab71dc7dc574c712d63.jpg', NULL, '2023-01-12 22:23:23', '2023-01-12 22:23:33'),
(16, 'Seker Portakali', 4, 19, '9789750738609', '48.75', '6977fe221c0a4e210d97acc11b6059e5.jpg', NULL, '2023-01-12 22:25:40', '2023-01-12 22:31:04'),
(17, 'Ikinci Dünya Savasi: Infografik', 7, 20, '9786256989108', '170.00', '1e8be1843f571e1613b1e0d4da3ec5eb.jpg', NULL, '2023-01-12 22:29:08', '2023-01-12 22:31:15'),
(18, 'Fahrenheit 451', 4, 21, '9786053757818', '80.00', 'a6967cf18580aeec64ee2f86928d4a6c.jpg', NULL, '2023-01-12 22:32:52', NULL),
(19, 'Yeni Baslayanlar için HTML5 CSS3 & Javascript', 11, 22, '9786052263709', '101.00', '6495a1db6985167c47c28d044471ef52.jpg', NULL, '2023-01-12 22:35:39', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Roman', 1, '2022-01-22 07:23:03', '2023-01-12 21:47:17'),
(5, 'Edebiyat', 1, '2022-01-22 07:23:03', '2023-01-12 21:55:19'),
(6, 'Bilim Kurgu', 1, '2022-01-22 07:23:03', '2023-01-12 22:00:21'),
(7, 'Tarih', 1, '2022-01-22 07:23:03', '2023-01-12 22:29:18'),
(10, 'Kisisel Gelisim', 1, '2023-01-12 21:59:53', '0000-00-00 00:00:00'),
(11, 'Bilgisayar Yazilim ve Programlama Dili ', 1, '2023-01-12 22:26:15', '2023-01-12 22:36:04'),
(12, 'test', 1, '2023-01-14 10:43:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, '', '2022-01-22 05:45:57', '2023-01-13 15:00:05', 1, 100),
(8, 1, '', '2022-01-22 05:59:17', '2023-01-13 15:00:11', 1, 0),
(9, 10, '', '2022-01-22 07:38:09', '2023-01-13 15:00:16', 1, 0),
(10, 11, '', '2022-01-22 08:15:02', '2023-01-13 15:00:21', 1, 0),
(11, 1, '', '2022-01-22 08:17:15', '2023-01-13 15:00:25', 1, 10),
(12, 10, '', '2022-01-22 08:18:08', '2023-01-13 15:00:30', 1, 5),
(13, NULL, '', '2023-01-12 22:37:47', NULL, NULL, NULL),
(14, 12, '', '2023-01-12 22:48:53', '2023-01-13 15:00:39', 1, 30),
(15, NULL, '', '2023-01-13 14:57:43', NULL, NULL, NULL),
(16, 1, '', '2023-01-13 15:01:58', '2023-01-13 15:04:05', 1, 0),
(17, 1, 'ID:1', '2023-01-14 10:47:32', '2023-01-14 10:50:16', 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'ID:1', 'Cengizhan Turan', 'Cengizhanturan300@gmail.com', '3831111', 'f2abae2c6442359b27db5cf70be05da4', 1, '2022-01-02 07:23:03', '2023-01-13 14:56:07'),
(4, 'ID:2', 'Edin Shkoza', 'Edinshkoza@gmail.com', '3831112', '2fee6e2a54516058f8379e2dc6d7412b', 1, '2022-01-02 07:23:03', '2023-01-13 14:55:20'),
(8, 'ID:3', 'hamze lakushi', 'hamzelakushi2002@gmail.com', '3831113', '77df7f6dfb16f51f7d9008c12765a986', 1, '2022-01-02 07:23:03', '2023-01-13 14:54:50');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
