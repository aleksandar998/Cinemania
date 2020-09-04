-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 07:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bioskop`
--

CREATE TABLE `bioskop` (
  `bioskop_id` bigint(20) NOT NULL,
  `adresa` varchar(50) NOT NULL,
  `grad` varchar(50) NOT NULL,
  `naziv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bioskop`
--

INSERT INTO `bioskop` (`bioskop_id`, `adresa`, `grad`, `naziv`) VALUES
(1, 'Jurija Gagarina ', 'Beograd', 'Cinemania'),
(2, 'Sindjeliceva', 'Cacak', 'Cinemania'),
(3, 'Nikole Tesle', 'Požarevac', 'Cinemania'),
(4, 'Bulevar Kralja Petra', 'Novi Sad', 'Cinemania'),
(5, 'Karadjordjeva', 'Valjevo', 'Cinemania');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `film_id` bigint(20) NOT NULL,
  `trailer` varchar(120) NOT NULL,
  `naziv_filma` varchar(50) NOT NULL,
  `opis` varchar(120) NOT NULL,
  `tehnologija` varchar(50) NOT NULL,
  `trajanje` int(11) NOT NULL,
  `zanr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`film_id`, `trailer`, `naziv_filma`, `opis`, `tehnologija`, `trajanje`, `zanr`) VALUES
(1, 'https://www.youtube.com/embed/bhL8WlDHKaY', 'Terminator 2', 'Film govori o povratku Terminatora T-800 iz budućnosti u sadašnjost, ali za razliku od prvog filma, ovaj put je poslan s', '2D', 160, 'akcija, naučna fantastika'),
(2, 'https://www.youtube.com/embed/o2AsIXSh2xo', 'Bird Box', 'Žena s dvoje dece kreće na opasan put. Oni beže vezanih očiju od jezivog nevidljivog entiteta (ili čudovišta, kako ti dr', '3D', 150, 'Horor'),
(3, 'https://www.youtube.com/embed/LdOM0x0XDMo', 'Tenet', 'filmska zvezda John David Washington BlacKkKlansman kao vešt agent koji se čini da je vraćen iz mrtvih. Sada je deo nove', '2D', 165, 'akcija'),
(4, 'https://www.youtube.com/embed/a5SxyQ-9YDA', 'James Bond 007 no time to die', 'Krejg je 2017. potvrdio da će peti put glumiti britanskog tajnog agenta 007. U novom filmu Bond će uživati u mirnom živo', '3D', 120, 'akcija, triler');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `korisnik_id` bigint(20) NOT NULL,
  `clan_kluba` bit(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ime` varchar(50) NOT NULL,
  `poeni` int(11) DEFAULT NULL,
  `prezime` varchar(50) NOT NULL,
  `sifra` varchar(120) NOT NULL,
  `tip_korisnika` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`korisnik_id`, `clan_kluba`, `email`, `ime`, `poeni`, `prezime`, `sifra`, `tip_korisnika`) VALUES
(1, b'0', 'andjelkadzida@gmail.com', 'Andjelka', 0, 'Dzida', '$2a$10$Mj2dR5MDF4xl/BPIRDK6I.z1GGOB2ey3t1aLoGrQyEM2buwCc4sMy', 'KORISNIK'),
(2, b'0', 'aleksandarvukovic@gmail.com', 'Aleksandar', 10, 'Vukovic', '$2a$10$tlzs5JSyEMEjCScg4EC51uJ89lIlRvhSBuIGdcX/NzsAi4rGNfqBK', 'ADMIN'),
(3, b'0', 'aleksamemedovic@gmail.com', 'Aleksa', 5, 'Memedovic', '$2a$10$.9N48soCAHKbP8hmKArYhuLuwGF7Axx8b0PivLjlp2/qVS9O6GxT2', 'MENADŽER'),
(4, b'0', 'lukabrdar@gmail.com', 'Luka', 40, 'Brdar', '$2a$10$qVhXy4KIFeQ36v6Df13BYO4lFWFBQuUUl94G55eDzLbZj.sQ19swu', 'KORISNIK'),
(5, b'0', 'nikoladrikic@gmail.com', 'Nikola', 0, 'Drikic', '$2a$10$8LBCEQMwf1lZdkK6/.EC8.avnrR7JersmIGigLHji6Zj41hb8n0gS', 'KORISNIK'),
(6, b'0', 'nikolajevremovic@gmail.com', 'Nikola', 0, 'Jevremovic', '$2a$10$WcvXbrm/NMD/M1UzduaG6e.CWifu/xguyEDxSI2oUDsJhfRNdHJbi', 'KORISNIK');

-- --------------------------------------------------------

--
-- Table structure for table `projekcija`
--

CREATE TABLE `projekcija` (
  `projekcija_id` bigint(20) NOT NULL,
  `kraj_projekcije` datetime NOT NULL,
  `pocetak_projekcije` datetime NOT NULL,
  `film_id` bigint(20) NOT NULL,
  `sala_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projekcija`
--

INSERT INTO `projekcija` (`projekcija_id`, `kraj_projekcije`, `pocetak_projekcije`, `film_id`, `sala_id`) VALUES
(1, '2020-07-31 15:05:00', '2020-07-31 12:20:00', 3, 3),
(2, '2020-08-11 00:20:00', '2020-08-10 22:20:00', 4, 5),
(3, '2020-07-25 14:06:00', '2020-07-25 11:26:00', 1, 3),
(4, '2020-08-03 11:58:00', '2020-08-03 09:28:00', 2, 2),
(5, '2020-07-22 00:24:00', '2020-07-21 22:24:00', 4, 4),
(6, '2020-07-21 01:45:00', '2020-07-20 23:00:00', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `projekcija_sediste`
--

CREATE TABLE `projekcija_sediste` (
  `projekcija_id` bigint(20) NOT NULL,
  `sediste_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projekcija_sediste`
--

INSERT INTO `projekcija_sediste` (`projekcija_id`, `sediste_id`) VALUES
(1, 8),
(3, 5),
(3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `rezervacija_id` bigint(20) NOT NULL,
  `cena_karte` double DEFAULT NULL,
  `potvrdjena` bit(1) DEFAULT NULL,
  `korisnik_id` bigint(20) NOT NULL,
  `projekcija_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`rezervacija_id`, `cena_karte`, `potvrdjena`, `korisnik_id`, `projekcija_id`) VALUES
(1, 500, b'1', 4, 3),
(2, 500, b'1', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rezervisana_sedista`
--

CREATE TABLE `rezervisana_sedista` (
  `rezevisana_sedista_id` bigint(20) NOT NULL,
  `rezervacija_id` bigint(20) NOT NULL,
  `sediste_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervisana_sedista`
--

INSERT INTO `rezervisana_sedista` (`rezevisana_sedista_id`, `rezervacija_id`, `sediste_id`) VALUES
(1, 1, 8),
(2, 1, 5),
(3, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `sala_id` bigint(20) NOT NULL,
  `broj_sale` int(11) NOT NULL,
  `bioskop_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`sala_id`, `broj_sale`, `bioskop_id`) VALUES
(1, 10, 1),
(2, 20, 2),
(3, 30, 3),
(4, 40, 4),
(5, 50, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sediste`
--

CREATE TABLE `sediste` (
  `sediste_id` bigint(20) NOT NULL,
  `tip_sedista` varchar(20) NOT NULL,
  `sala_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sediste`
--

INSERT INTO `sediste` (`sediste_id`, `tip_sedista`, `sala_id`) VALUES
(1, 'Standardno', 1),
(2, 'Specijalno', 2),
(3, 'Specijalno', 3),
(4, 'Standardno', 4),
(5, 'Standardno', 5),
(6, 'Specijalno', 1),
(7, 'Specijalno', 3),
(8, 'Standardno', 4),
(9, 'Standardno', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD PRIMARY KEY (`bioskop_id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`korisnik_id`),
  ADD UNIQUE KEY `UK_87tbhltaua2a6k6jrdfl1kqap` (`email`);

--
-- Indexes for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD PRIMARY KEY (`projekcija_id`),
  ADD KEY `FKhnu3xvny79t2iwbs3bm9fbcrr` (`film_id`),
  ADD KEY `FK4fk9plx6lt30cvex5q8b943sh` (`sala_id`);

--
-- Indexes for table `projekcija_sediste`
--
ALTER TABLE `projekcija_sediste`
  ADD PRIMARY KEY (`projekcija_id`,`sediste_id`),
  ADD KEY `FK4udilag73txtuektnbr7gifl4` (`sediste_id`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`rezervacija_id`),
  ADD KEY `FK5c3hdf9ttpg494iukoktp6ard` (`korisnik_id`),
  ADD KEY `FK7bqx4mfg6lj8u7phpcy2mrpm8` (`projekcija_id`);

--
-- Indexes for table `rezervisana_sedista`
--
ALTER TABLE `rezervisana_sedista`
  ADD PRIMARY KEY (`rezevisana_sedista_id`),
  ADD KEY `FKgr8eya2wpd9ylxwl4uw7cas7a` (`rezervacija_id`),
  ADD KEY `FK90kgu50ygrokk1jb4rht2qu9` (`sediste_id`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`sala_id`),
  ADD KEY `FKd2rfv3iv91hk63ymw5m9nla93` (`bioskop_id`);

--
-- Indexes for table `sediste`
--
ALTER TABLE `sediste`
  ADD PRIMARY KEY (`sediste_id`),
  ADD KEY `FK7migl4gxc6lbubt0yrhan0i9s` (`sala_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bioskop`
--
ALTER TABLE `bioskop`
  MODIFY `bioskop_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `film_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `korisnik_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projekcija`
--
ALTER TABLE `projekcija`
  MODIFY `projekcija_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `rezervacija_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rezervisana_sedista`
--
ALTER TABLE `rezervisana_sedista`
  MODIFY `rezevisana_sedista_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `sala_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sediste`
--
ALTER TABLE `sediste`
  MODIFY `sediste_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD CONSTRAINT `FK4fk9plx6lt30cvex5q8b943sh` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`sala_id`),
  ADD CONSTRAINT `FKhnu3xvny79t2iwbs3bm9fbcrr` FOREIGN KEY (`film_id`) REFERENCES `film` (`film_id`);

--
-- Constraints for table `projekcija_sediste`
--
ALTER TABLE `projekcija_sediste`
  ADD CONSTRAINT `FK4udilag73txtuektnbr7gifl4` FOREIGN KEY (`sediste_id`) REFERENCES `sediste` (`sediste_id`),
  ADD CONSTRAINT `FK57769ycabuxmweql0bln862ko` FOREIGN KEY (`projekcija_id`) REFERENCES `projekcija` (`projekcija_id`);

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `FK5c3hdf9ttpg494iukoktp6ard` FOREIGN KEY (`korisnik_id`) REFERENCES `korisnik` (`korisnik_id`),
  ADD CONSTRAINT `FK7bqx4mfg6lj8u7phpcy2mrpm8` FOREIGN KEY (`projekcija_id`) REFERENCES `projekcija` (`projekcija_id`);

--
-- Constraints for table `rezervisana_sedista`
--
ALTER TABLE `rezervisana_sedista`
  ADD CONSTRAINT `FK90kgu50ygrokk1jb4rht2qu9` FOREIGN KEY (`sediste_id`) REFERENCES `sediste` (`sediste_id`),
  ADD CONSTRAINT `FKgr8eya2wpd9ylxwl4uw7cas7a` FOREIGN KEY (`rezervacija_id`) REFERENCES `rezervacija` (`rezervacija_id`);

--
-- Constraints for table `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `FKd2rfv3iv91hk63ymw5m9nla93` FOREIGN KEY (`bioskop_id`) REFERENCES `bioskop` (`bioskop_id`);

--
-- Constraints for table `sediste`
--
ALTER TABLE `sediste`
  ADD CONSTRAINT `FK7migl4gxc6lbubt0yrhan0i9s` FOREIGN KEY (`sala_id`) REFERENCES `sala` (`sala_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
