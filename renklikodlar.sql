-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Ara 2016, 00:35:44
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `renklikodlar`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `haberler`
--

CREATE TABLE `haberler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(300) NOT NULL,
  `haber` text NOT NULL,
  `tarih` datetime NOT NULL,
  `okuma` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `haberler`
--

INSERT INTO `haberler` (`id`, `baslik`, `haber`, `tarih`, `okuma`) VALUES
(1, 'Haberin Basligi 0', 'Haber icerigi 0', '2016-12-19 00:33:59', 10),
(2, 'Haberin Basligi 1', 'Haber icerigi 1', '2016-12-19 00:33:59', 4),
(3, 'Haberin Basligi 2', 'Haber icerigi 2', '2016-12-19 00:33:59', 2),
(4, 'Haberin Basligi 3', 'Haber icerigi 3', '2016-12-19 00:33:59', 10),
(5, 'Haberin Basligi 4', 'Haber icerigi 4', '2016-12-19 00:33:59', 5),
(6, 'Haberin Basligi 5', 'Haber icerigi 5', '2016-12-19 00:33:59', 4),
(7, 'Haberin Basligi 6', 'Haber icerigi 6', '2016-12-19 00:33:59', 8),
(8, 'Haberin Basligi 7', 'Haber icerigi 7', '2016-12-19 00:33:59', 5),
(9, 'Haberin Basligi 8', 'Haber icerigi 8', '2016-12-19 00:33:59', 5),
(10, 'Haberin Basligi 9', 'Haber icerigi 9', '2016-12-19 00:33:59', 3),
(11, 'Haberin Basligi 10', 'Haber icerigi 10', '2016-12-19 00:33:59', 3),
(12, 'Haberin Basligi 11', 'Haber icerigi 11', '2016-12-19 00:33:59', 5),
(13, 'Haberin Basligi 12', 'Haber icerigi 12', '2016-12-19 00:33:59', 10),
(14, 'Haberin Basligi 13', 'Haber icerigi 13', '2016-12-19 00:33:59', 7),
(15, 'Haberin Basligi 14', 'Haber icerigi 14', '2016-12-19 00:33:59', 6),
(16, 'Haberin Basligi 15', 'Haber icerigi 15', '2016-12-19 00:33:59', 4),
(17, 'Haberin Basligi 16', 'Haber icerigi 16', '2016-12-19 00:33:59', 3),
(18, 'Haberin Basligi 17', 'Haber icerigi 17', '2016-12-19 00:33:59', 7),
(19, 'Haberin Basligi 18', 'Haber icerigi 18', '2016-12-19 00:33:59', 9),
(20, 'Haberin Basligi 19', 'Haber icerigi 19', '2016-12-19 00:33:59', 10),
(21, 'Haberin Basligi 20', 'Haber icerigi 20', '2016-12-19 00:33:59', 5);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `haberler`
--
ALTER TABLE `haberler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `haberler`
--
ALTER TABLE `haberler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
