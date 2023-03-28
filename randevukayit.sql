-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Mar 2023, 15:25:35
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `randevukayit`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `aeposta` varchar(255) NOT NULL,
  `asifre` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`aeposta`, `asifre`) VALUES
('admin@edoc.com', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `doktor`
--

CREATE TABLE `doktor` (
  `docid` int(11) NOT NULL,
  `docemail` varchar(255) DEFAULT NULL,
  `docname` varchar(255) DEFAULT NULL,
  `docpassword` varchar(255) DEFAULT NULL,
  `docnic` varchar(15) DEFAULT NULL,
  `doctel` varchar(15) DEFAULT NULL,
  `specialties` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `doktor`
--

INSERT INTO `doktor` (`docid`, `docemail`, `docname`, `docpassword`, `docnic`, `doctel`, `specialties`) VALUES
(4, 'emredrms@gmail.com', 'Emre Durmus', '123', '17984849848', '5989887523', 16),
(3, 'cagatay07@gmail.com', 'Cagatay Kurt', '123', '545454444', '595955595', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hasta`
--

CREATE TABLE `hasta` (
  `pid` int(11) NOT NULL,
  `pemail` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `ppassword` varchar(255) DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `pnic` varchar(15) DEFAULT NULL,
  `pdob` date DEFAULT NULL,
  `ptel` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `hasta`
--

INSERT INTO `hasta` (`pid`, `pemail`, `pname`, `ppassword`, `paddress`, `pnic`, `pdob`, `ptel`) VALUES
(4, 'yilmaz@gmail.com', 'Ali Yilmaz', '123', 'sultanorhan mah. 258 sok. Gebze/Kocaeli', '1795668988', '2002-08-15', '0596669668'),
(3, 'hasankrt@gmail.com', 'Hasan kurt', '123', 'gebze tatlikuyu', '1905', '2002-02-20', '0596669666');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `klinik`
--

CREATE TABLE `klinik` (
  `id` int(2) NOT NULL,
  `klinikler` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `klinik`
--

INSERT INTO `klinik` (`id`, `klinikler`) VALUES
(1, 'Accident and emergency medicine'),
(2, 'Allergology'),
(3, 'Anaesthetics'),
(4, 'Biological hematology'),
(5, 'Cardiology'),
(6, 'Child psychiatry'),
(7, 'Clinical biology'),
(8, 'Clinical chemistry'),
(9, 'Clinical neurophysiology'),
(10, 'Clinical radiology'),
(11, 'Dental, oral and maxillo-facial surgery'),
(12, 'Dermato-venerology'),
(13, 'Dermatology'),
(14, 'Endocrinology'),
(15, 'Gastro-enterologic surgery'),
(16, 'Gastroenterology'),
(17, 'General hematology'),
(18, 'General Practice'),
(19, 'General surgery'),
(20, 'Geriatrics'),
(21, 'Immunology'),
(22, 'Infectious diseases'),
(23, 'Internal medicine'),
(24, 'Laboratory medicine'),
(25, 'Maxillo-facial surgery'),
(26, 'Microbiology'),
(27, 'Nephrology'),
(28, 'Neuro-psychiatry'),
(29, 'Neurology'),
(30, 'Neurosurgery'),
(31, 'Nuclear medicine'),
(32, 'Obstetrics and gynecology'),
(33, 'Occupational medicine'),
(34, 'Ophthalmology'),
(35, 'Orthopaedics'),
(36, 'Otorhinolaryngology'),
(37, 'Paediatric surgery'),
(38, 'Paediatrics'),
(39, 'Pathology'),
(40, 'Pharmacology'),
(41, 'Physical medicine and rehabilitation'),
(42, 'Plastic surgery'),
(43, 'Podiatric Medicine'),
(44, 'Podiatric Surgery'),
(45, 'Psychiatry'),
(46, 'Public health and Preventive Medicine'),
(47, 'Radiology'),
(48, 'Radiotherapy'),
(49, 'Respiratory medicine'),
(50, 'Rheumatology'),
(51, 'Stomatology'),
(52, 'Thoracic surgery'),
(53, 'Tropical medicine'),
(54, 'Urology'),
(55, 'Vascular surgery'),
(56, 'Venereology');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `randevu`
--

CREATE TABLE `randevu` (
  `appoid` int(11) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  `apponum` int(3) DEFAULT NULL,
  `scheduleid` int(10) DEFAULT NULL,
  `appodate` date DEFAULT NULL,
  `rndtime` time DEFAULT NULL,
  `bitis` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `randevu`
--

INSERT INTO `randevu` (`appoid`, `pid`, `apponum`, `scheduleid`, `appodate`, `rndtime`, `bitis`) VALUES
(33, 3, 1, 34, '2027-03-23', NULL, NULL),
(56, 4, 1, 42, '2023-03-29', '09:15:00', '2023-04-05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `takvim`
--

CREATE TABLE `takvim` (
  `scheduleid` int(11) NOT NULL,
  `docid` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `scheduledate` datetime DEFAULT NULL,
  `scheduletime` time DEFAULT NULL,
  `nop` int(4) DEFAULT NULL,
  `bitis` datetime DEFAULT NULL,
  `Durum` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `takvim`
--

INSERT INTO `takvim` (`scheduleid`, `docid`, `title`, `scheduledate`, `scheduletime`, `nop`, `bitis`, `Durum`) VALUES
(20, '4', 'weaea', '2023-03-24 00:00:00', '17:00:00', 4, '2023-03-28 10:46:51', 0),
(17, '4', 'randevu6', '2023-04-09 00:00:00', '10:06:00', 1, '2023-03-28 10:46:51', 0),
(21, '3', 'randevu8', '2023-03-08 00:00:00', '12:50:00', 4, '2023-03-28 10:46:51', 0),
(22, '4', 'dwadadawda', '2023-04-09 00:00:00', '09:50:00', 4, '2023-03-28 10:46:51', 0),
(26, '4', 'cxxbcxcbxbcx', '2023-03-30 00:00:00', '10:22:00', 4, '2023-03-28 10:46:51', 0),
(25, '3', 'randevuuu9', '2023-03-29 00:00:00', '10:17:00', 5, '2023-03-28 10:46:51', 0),
(43, '3', 'Ben Doktor 3', '2023-03-29 09:21:00', '00:00:00', 2, '2023-03-27 09:21:00', 0),
(34, '3', 'oturum5', '2023-03-27 15:04:00', '00:00:00', 5, '2023-03-30 12:04:00', 1),
(36, '3', 'Ben doktor 2 ', '2023-03-26 15:45:00', '00:00:00', 3, '2023-03-28 15:45:06', 0),
(42, '3', 'Ben doktor', '2023-03-28 16:06:00', '00:00:00', 1, '2023-03-30 16:06:00', 1),
(44, '4', 'randevu89', '2023-03-28 17:42:00', '00:00:00', 5, '2023-03-31 13:43:00', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `webkullanici`
--

CREATE TABLE `webkullanici` (
  `email` varchar(255) NOT NULL,
  `kullanicitipi` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `webkullanici`
--

INSERT INTO `webkullanici` (`email`, `kullanicitipi`) VALUES
('admin@edoc.com', 'a'),
('yilmaz@gmail.com', 'p'),
('emhashenudara@gmail.com', 'p'),
('emredrms@gmail.com', 'd'),
('cagatay07@gmail.com', 'd'),
('hasankrt@gmail.com', 'p');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aeposta`);

--
-- Tablo için indeksler `doktor`
--
ALTER TABLE `doktor`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `specialties` (`specialties`);

--
-- Tablo için indeksler `hasta`
--
ALTER TABLE `hasta`
  ADD PRIMARY KEY (`pid`);

--
-- Tablo için indeksler `klinik`
--
ALTER TABLE `klinik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `randevu`
--
ALTER TABLE `randevu`
  ADD PRIMARY KEY (`appoid`),
  ADD KEY `pid` (`pid`),
  ADD KEY `scheduleid` (`scheduleid`);

--
-- Tablo için indeksler `takvim`
--
ALTER TABLE `takvim`
  ADD PRIMARY KEY (`scheduleid`),
  ADD KEY `docid` (`docid`);

--
-- Tablo için indeksler `webkullanici`
--
ALTER TABLE `webkullanici`
  ADD PRIMARY KEY (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `doktor`
--
ALTER TABLE `doktor`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `hasta`
--
ALTER TABLE `hasta`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `randevu`
--
ALTER TABLE `randevu`
  MODIFY `appoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- Tablo için AUTO_INCREMENT değeri `takvim`
--
ALTER TABLE `takvim`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
