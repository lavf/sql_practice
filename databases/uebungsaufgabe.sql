-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Feb 2021 um 12:11
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `uebungsaufgabe`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `adressen`
--

CREATE TABLE `adressen` (
  `adressID` int(11) NOT NULL,
  `Strasse` varchar(40) DEFAULT NULL,
  `HausNr` varchar(5) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `Ort` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `artikel`
--

CREATE TABLE `artikel` (
  `ArtikelNr` int(11) NOT NULL,
  `Artikelbezeichnung` varchar(40) DEFAULT NULL,
  `KategorieID` char(5) DEFAULT NULL,
  `UStSchluessel` char(2) DEFAULT NULL,
  `Listenpreis` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bearbeiter`
--

CREATE TABLE `bearbeiter` (
  `bearbeiterID` char(5) NOT NULL,
  `vorname` varchar(40) DEFAULT NULL,
  `nachname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungen`
--

CREATE TABLE `bestellungen` (
  `BestellNr` int(11) NOT NULL,
  `BestellDatum` date DEFAULT NULL,
  `bearbeiterID` char(5) DEFAULT NULL,
  `Bearbdatum` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kategorien`
--

CREATE TABLE `kategorien` (
  `KategorieID` char(5) NOT NULL,
  `KategorieText` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden`
--

CREATE TABLE `kunden` (
  `kundenNr` int(11) NOT NULL,
  `vorname` varchar(40) DEFAULT NULL,
  `nachname` varchar(40) DEFAULT NULL,
  `adressID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `positionen`
--

CREATE TABLE `positionen` (
  `positionID` int(11) NOT NULL,
  `positionsNr` smallint(6) DEFAULT NULL,
  `BestellNr` int(11) DEFAULT NULL,
  `ArtikelNr` int(11) DEFAULT NULL,
  `Menge` int(11) DEFAULT NULL,
  `VKPreis` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ust`
--

CREATE TABLE `ust` (
  `UStSchluessel` char(2) NOT NULL,
  `UStSatz` decimal(3,1) DEFAULT NULL,
  `bis` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `adressen`
--
ALTER TABLE `adressen`
  ADD PRIMARY KEY (`adressID`);

--
-- Indizes für die Tabelle `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`ArtikelNr`);

--
-- Indizes für die Tabelle `bearbeiter`
--
ALTER TABLE `bearbeiter`
  ADD PRIMARY KEY (`bearbeiterID`);

--
-- Indizes für die Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD PRIMARY KEY (`BestellNr`);

--
-- Indizes für die Tabelle `kategorien`
--
ALTER TABLE `kategorien`
  ADD PRIMARY KEY (`KategorieID`);

--
-- Indizes für die Tabelle `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`kundenNr`);

--
-- Indizes für die Tabelle `positionen`
--
ALTER TABLE `positionen`
  ADD PRIMARY KEY (`positionID`);

--
-- Indizes für die Tabelle `ust`
--
ALTER TABLE `ust`
  ADD PRIMARY KEY (`UStSchluessel`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `adressen`
--
ALTER TABLE `adressen`
  MODIFY `adressID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `artikel`
--
ALTER TABLE `artikel`
  MODIFY `ArtikelNr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  MODIFY `BestellNr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `kunden`
--
ALTER TABLE `kunden`
  MODIFY `kundenNr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `positionen`
--
ALTER TABLE `positionen`
  MODIFY `positionID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
