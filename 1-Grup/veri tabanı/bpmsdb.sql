-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Oca 2023, 22:47:56
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
-- Veritabanı: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Prizren Guzellik Salonu', 'Prizren', 3831122233, 'Prizrenkuafor@gmail.com', '8a70b1a46091ee1c89fcc2d3b5a85a38', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(10, 12, 541176356, '2022-12-26', '21:33:00', 'mesaj', '2022-12-24 17:30:36', 'onaylandi', 'Selected', '2022-12-29 22:54:12'),
(11, 1, 318343672, '2022-12-30', '13:15:00', 'mesaj', '2022-12-27 10:13:40', 'kabul edildi', 'Selected', '2022-12-29 22:53:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(4, 7, 4, 138889283, '2022-05-13 11:42:21'),
(5, 7, 9, 138889283, '2022-05-13 11:42:21'),
(6, 7, 16, 138889283, '2022-05-13 11:42:21'),
(7, 8, 3, 555850701, '2022-05-13 11:42:51'),
(8, 8, 6, 555850701, '2022-05-13 11:42:51'),
(9, 8, 9, 555850701, '2022-05-13 11:42:51'),
(10, 8, 11, 555850701, '2022-05-13 11:42:51'),
(13, 10, 1, 330026346, '2022-05-28 08:51:42'),
(14, 10, 2, 330026346, '2022-05-28 08:51:42'),
(15, 11, 2, 379060040, '2022-05-29 07:36:17'),
(16, 11, 5, 379060040, '2022-05-29 07:36:18'),
(17, 11, 6, 379060040, '2022-05-29 07:36:18'),
(18, 11, 12, 379060040, '2022-05-29 07:36:18'),
(19, 11, 3, 460087279, '2022-06-01 01:03:58'),
(20, 12, 1, 207776209, '2022-12-24 17:32:39'),
(21, 12, 2, 207776209, '2022-12-24 17:32:39'),
(22, 12, 3, 207776209, '2022-12-24 17:32:39'),
(23, 12, 4, 207776209, '2022-12-24 17:32:39'),
(24, 12, 5, 207776209, '2022-12-24 17:32:39'),
(25, 12, 6, 207776209, '2022-12-24 17:32:39'),
(26, 12, 7, 207776209, '2022-12-24 17:32:39'),
(27, 12, 8, 207776209, '2022-12-24 17:32:39'),
(28, 12, 9, 207776209, '2022-12-24 17:32:39'),
(29, 12, 10, 207776209, '2022-12-24 17:32:40'),
(30, 12, 11, 207776209, '2022-12-24 17:32:40'),
(31, 12, 12, 207776209, '2022-12-24 17:32:40'),
(32, 12, 16, 207776209, '2022-12-24 17:32:40'),
(33, 1, 1, 211275105, '2022-12-27 10:14:28'),
(34, 1, 2, 211275105, '2022-12-27 10:14:28'),
(35, 1, 3, 211275105, '2022-12-27 10:14:28');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Hakkimizda', 'Ana odak noktamiz kalite ve hijyendir. Salonumuz ileri teknoloji ekipmanlarla iyi bir Sekilde donatilmistir ve en kaliteli hizmeti sunmaktadir. Personelimiz iyi egitimli ve deneyimlidir, Cilt, Saç ve Vücut Sekillendirme konusunda size rahat ve stressiz hissetmenizi saglayacak lüks bir deneyim sunacak gelismis hizmetler sunmaktadir. Salondaki spesiyaliteler, düzenli agartma ve yüz bakiminin yani sira, birçok saç stili, Gelin ve sinema makyaji ve farkli Yüz ve moda saç boyalaridir.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Iletisime Gecin', 'Prizren,Kosovo', 'Prizrenkadinkuafor@gmail.com', 383111111, NULL, 'Sabah 09:00 Aksam 22:00 ');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'O3 Facial (Yuz bakimi)', 'O3+ gelin yuz kiti, benzersiz 10 adimli rejimi ile size isilti artisi sunar. Yüzeyinizdeki kir ve kirleticileri ortadan kaldirarak birçok cilt sorununu çözmeye yardimci olur. Ve cilt hücrelerini nazikçe onararak cildinizi nemlendirmeye yardimci olan mükemmel bir kittir. Bu gelinlik kitinin güçlü bilesenleri ile daha pürüzsüz, parlak ve temiz bir cilt ortaya cikaririr.', 1200, '6317354a708ff1cff0d992943f165cdc1672095242.jpg', '2022-05-24 22:37:38'),
(2, 'Fruit Facial (yuz bakimi)', 'Meyve yuzleri, glikolik asit, alfa hidroksil asit, sitrik asit, fenolik asit, vitaminler ve mineraller gibi baz? meyve asitlerini icerir. Bu asitler leke onleyici, kirisiklik onleyicidir ve cildinizin pul pul dökülmesine yardimci olur, cildinizi yüksek oranda detoksifiye eder, tum toksinleri disari atar ve yuzunuzu nemlendirir.', 500, 'How-To-Do-Fruit-Facial-At-Home.jpg', '2022-05-24 22:37:53'),
(3, 'Charcol Facial (yuz bakimi)', 'Aktif kömur, kemik kömuru, hindistan cevizi kabuklari, turba, petrol kok, komur, zeytin cukurlari, bambu veya talastan olusturulur. Duzenli komur cok yüksek sicakliklara maruz birakilarak aktive edildiginde uretilen ince siyah bir toz seklindedir. Bu, ic yapisini degistirmek ve emilebilirligi artirmak icin yuzey alanini arttirmak icin yapilir. Bu islemden gectikten sonra aldiginiz odun komuru cok gozeneklidir.', 1000, 'b9fb9d37bdf15a699bc071ce49baea531652852364.jpg', '2022-05-24 22:37:10'),
(4, 'Deluxe Menicure (El bakimi)', 'Islatici ve nemlendirici peeling, kutikul calismasi, tirnaklarin kesilmesi ve torpulenmesi, sert cildin cikarilmasi (pedikur) ve yenileyici maskenin uygulanmasini iceren luks bir tedavidir. K?sa bir masaj ve tirnaklar?niz kabartilmis ve boyamaya hazirdir.', 500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2022-05-24 22:37:34'),
(5, 'Deluxe Pedicure(Ayak Bakimi)', 'Islatici ve nemlendirici peeling, kutikul calismasi, tirnaklarin kesilmesi ve torpulenmesi, sert cildin cikarilmasi (pedikur) ve yenileyici maskenin uygulanmasini iceren luks bir tedavidir. K?sa bir masaj ve tirnaklar?niz kabartilmis ve boyamaya hazirdir.', 600, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2022-05-24 22:37:47'),
(6, 'Normal Menicure (El bakimi)', 'Islatici ve nemlendirici peeling, kutikul calismasi, tirnaklarin kesilmesi ve torpulenmesi, sert cildin cikarilmasi (pedikur) ve yenileyici maskenin uygulanmasini iceren luks bir tedavidir. K?sa bir masaj ve tirnaklar?niz kabartilmis ve boyamaya hazirdir.', 300, 'The-Dummys-Guide-To-Using-A-Manicure-Kit_OI.jpg', '2022-05-24 22:37:01'),
(7, 'Normal Pedicure (Ayak bakimi)', 'Islatici ve nemlendirici peeling, kutikul calismasi, tirnaklarin kesilmesi ve torpulenmesi, sert cildin cikarilmasi (pedikur) ve yenileyici maskenin uygulanmasini iceren luks bir tedavidir. K?sa bir masaj ve tirnaklar?niz kabartilmis ve boyamaya hazirdir.', 400, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2022-05-24 22:37:19'),
(8, 'U-Shape Hair Cut (Kadin sac kesimi)', 'U-Shape Saç Kesimi', 250, 'cff8ad28cf40ebf4fbdd383fe546098d1652852593.jpg', '2022-05-24 22:37:38'),
(9, 'Layer Haircut (Kadin sac kesimi)', 'Katmanli Saç Kesimi', 550, '74375080377499ab76dad37484ee7f151652852649.jpg', '2022-05-24 22:37:53'),
(10, 'Rebonding (Kadin sac kesimi)', 'Saclarin yeniden baglanmasi, sacinizin dogal dokusunu degistiren ve puruzsuz, duz bir stil yaratan kimyasal bir islemdir. Ayni zamanda kimyasal duzlestirme olarak da adlandirilir. Sac yeniden baglama tipik olarak yerel kuafor salonunuzda lisansli bir kozmetikci tarafindan gerceklestirilir.', 3999, 'c362f21370120580f5779a2d019392851652852555.jpg', '2022-05-24 22:37:08'),
(11, 'Loreal sac boyama (Kadin sac bakimi)', 'Loreal Saç Rengi (musterinin arzuladigi renge gore)', 1200, 'images.jpg', '2022-05-24 22:37:35'),
(12, 'Vücut Spa (Kadin bakim)', 'Genellikle agriyi azaltmaya yardimci olan bir masaj spa terapisidir. Teknik, kan akisini tesvik etmek ve iyilesmeyi tesvik etmek için belirli vücut kisimlarina veya akupunktur noktalarina baski uygulamak için parmak uçlarini, avuç içini, dirsegi ve hatta ayaklari kullanmayi içerir.', 1500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2022-05-19 01:38:27'),
(16, 'Aroma Yagi Masaj Terapisi (Kadin bakim)', 'Aroma Yag Masaji', 700, '032b2cc936860b03048302d991c3498f1652173213.jpg', '2022-05-09 20:35:13');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Busra', 'Toska', 3832222, 'busratoska21@gmail.com', 'fb2fcd534b0ff3bbed73cc51df620323', '2021-10-16 14:37:49'),
(2, 'Zymka', 'Krusha', 3831111, 'krushazymka@gmail.com', 'b571ecea16a9824023ee1af16897a582', '2020-05-07 08:52:34'),
(3, 'Sibel', 'Halce', 3833333, 'Sibelhalce@gmail.com', '144a3f71a03ab7c4f46f9656608efdb2', '2021-10-16 14:40:20');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Tablo için indeksler `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
