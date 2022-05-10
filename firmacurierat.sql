-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: ian. 26, 2022 la 01:56 PM
-- Versiune server: 8.0.27
-- Versiune PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `firmacurierat`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajati`
--

CREATE TABLE `angajati` (
  `ID_Angajat` int NOT NULL,
  `ID_Departament` int NOT NULL,
  `Nume` varchar(50) NOT NULL,
  `Prenume` varchar(50) NOT NULL,
  `CNP` char(13) NOT NULL,
  `Salariu` int NOT NULL,
  `Strada` varchar(50) NOT NULL,
  `Numar` char(10) NOT NULL,
  `Sex` varchar(50) NOT NULL,
  `DataNasterii` date NOT NULL,
  `DataAngajarii` date NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Parola` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `angajati`
--

INSERT INTO `angajati` (`ID_Angajat`, `ID_Departament`, `Nume`, `Prenume`, `CNP`, `Salariu`, `Strada`, `Numar`, `Sex`, `DataNasterii`, `DataAngajarii`, `Email`, `Parola`) VALUES
(1, 1, 'Popescu', 'Mircea Marian', '6001110018935', 2500, 'Nicolae Balcescu', '24', 'M', '2000-11-01', '2020-09-16', 'mircea.marian@email.com', 'parola123'),
(2, 1, 'Cristea', 'Marian George', '6001110285083', 2500, '1 Decembrie', '22', 'M', '1999-12-13', '2021-02-15', 'cristea.marian@email.com', 'parola123'),
(3, 2, 'Vasile', 'Georgiana Maria', '2861110125002', 4000, 'Vasile Alecsandri', '111', 'F', '1986-11-09', '2017-09-03', 'vasile.georgiana@email.com', 'parola123'),
(4, 1, 'Iordache', 'Alexandra Cristina', '2941110067385', 3500, 'Preciziei', '113', 'F', '1996-09-17', '2015-11-27', 'iordache.alexandra@email.com', 'parola123'),
(5, 3, 'Antache', 'Elena Ioana', '2921110458832', 3200, 'George Cosbuc', '42', 'F', '1981-11-10', '2020-09-16', 'antache.elena@email.com', 'parola123'),
(6, 4, 'Zamfira', 'Radu Andrei', '5001116285125', 8500, 'Nicolae Balcescu', '99', 'M', '1986-09-16', '2011-10-18', 'zamfira.radu@email.com', 'parola123'),
(7, 3, 'George', 'Mihai Ionut', '5001134282277', 4500, 'Mihai Viteazu', '221', 'M', '1977-11-20', '2012-11-20', 'george.mihai@email.com', 'parola123'),
(8, 2, 'Paraschiv', 'Cristina Mihaela', '6001116289650', 3900, 'Mihai Eminescu', '23', 'F', '1989-07-19', '2013-09-16', 'paraschiv.cristina@email.com', 'parola123');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `autovehicule`
--

CREATE TABLE `autovehicule` (
  `ID_Autovehicul` int NOT NULL,
  `ID_Angajat` int NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Numar_de_inmatriculare` varchar(50) NOT NULL,
  `Capacitate` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `autovehicule`
--

INSERT INTO `autovehicule` (`ID_Autovehicul`, `ID_Angajat`, `Marca`, `Model`, `Numar_de_inmatriculare`, `Capacitate`) VALUES
(1, 1, 'Mercedes Benz', 'Vito', 'OT-22-EXP', 32173),
(2, 2, 'Opel', 'Combo Tour', 'OT-21-EXP', 600),
(3, 4, 'Fiat', 'Scudo', 'OT-20-EXP', 450);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `clienti`
--

CREATE TABLE `clienti` (
  `ID_client` int NOT NULL,
  `Nume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Prenume` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Strada` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Numar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Localitate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Judet` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Cod_postal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nr_telefon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';

--
-- Eliminarea datelor din tabel `clienti`
--

INSERT INTO `clienti` (`ID_client`, `Nume`, `Prenume`, `Strada`, `Numar`, `Localitate`, `Judet`, `Cod_postal`, `Nr_telefon`, `Email`) VALUES
(1, 'Vasile', 'Mihai Adrian', 'Tudor Vladimirescu', '11', 'Craiova', 'Dolj', '134220', '0742314234', 'mihai.adrian@email.com'),
(2, 'Antohi', 'George Marian', 'Primaverii', '21', 'Bals', 'Olt', '235100', '0722134213', 'george.marian@email.com'),
(3, 'Stoica', 'Andreea Maria', 'Garii', '113', 'Slatina', 'Olt', '412300', '0789123012', 'andreea.maria@email.com'),
(4, 'Turcitu', 'Marina Alexandra', 'Trandafirilor', '113', 'Pitesti', 'Arges', '131224', '0723183219', 'marina.alexandra@email.com');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `colet`
--

CREATE TABLE `colet` (
  `ID_colet` int NOT NULL,
  `ID_depozit` int NOT NULL,
  `Nume_destinatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Prenume_destinatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Strada_livrare` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Numar` varchar(50) NOT NULL,
  `Localitate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Judet` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Cod_postal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Greutate` double NOT NULL,
  `Pret_colet` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `colet`
--

INSERT INTO `colet` (`ID_colet`, `ID_depozit`, `Nume_destinatar`, `Prenume_destinatar`, `Strada_livrare`, `Numar`, `Localitate`, `Judet`, `Cod_postal`, `Greutate`, `Pret_colet`) VALUES
(1, 1, 'Vasile', 'Cristian Marian', 'Primaverii', '21', 'Filiasi', 'Dolj', '312304', 5, 250),
(2, 2, 'Andreescu', 'Mirela Cristina', 'Zorilor', '115', 'Mioveni', 'Arges', '124512', 2, 500),
(3, 4, 'Opran', 'Mihai Emilian', 'Aurel Vlaicu', '321', 'Ploiesti', 'Prahova', '450122', 20, 900),
(4, 3, 'Teodosescu', 'Octavian Stefan', 'Tineretului', '21', 'Bals', 'Olt', '235100', 15, 1500),
(5, 3, 'Gheorghe', 'Andrei Marian', 'Independentei', '313', 'Craiova', 'Dolj', '231413', 20, 100);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comanda`
--

CREATE TABLE `comanda` (
  `ID_Comanda` int NOT NULL,
  `ID_client` int NOT NULL,
  `ID_Autovehicul` int NOT NULL,
  `Pret_transport` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `comanda`
--

INSERT INTO `comanda` (`ID_Comanda`, `ID_client`, `ID_Autovehicul`, `Pret_transport`) VALUES
(1, 1, 1, 20),
(2, 1, 2, 15),
(3, 2, 3, 17),
(4, 4, 1, 22),
(5, 3, 3, 18);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `comanda-colet`
--

CREATE TABLE `comanda-colet` (
  `ID-comanda-colet` int NOT NULL,
  `ID-comanda` int NOT NULL,
  `ID-colet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `comanda-colet`
--

INSERT INTO `comanda-colet` (`ID-comanda-colet`, `ID-comanda`, `ID-colet`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `departamente`
--

CREATE TABLE `departamente` (
  `ID_Departament` int NOT NULL,
  `Nume` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `departamente`
--

INSERT INTO `departamente` (`ID_Departament`, `Nume`) VALUES
(1, 'Transport'),
(2, 'Contabilitate'),
(3, 'Relatii cu clientii'),
(4, 'Administrarea afacerii');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `depozit`
--

CREATE TABLE `depozit` (
  `ID_depozit` int NOT NULL,
  `Localitate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Judet` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Adresa` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Eliminarea datelor din tabel `depozit`
--

INSERT INTO `depozit` (`ID_depozit`, `Localitate`, `Judet`, `Adresa`) VALUES
(1, 'Craiova', 'Dolj', 'Strada Nicolae Balcescu, Numar 77'),
(2, 'Pitesti', 'Arges', 'Strada Libertatii, Numar 11'),
(3, 'Slatina', 'Olt', 'Strada Ion Creanga, Numar 22'),
(4, 'Bucuresti', 'Sector 6', 'Splaiul Independentei, Numar 260');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`ID_Angajat`),
  ADD KEY `ID-Departament_idx` (`ID_Departament`);

--
-- Indexuri pentru tabele `autovehicule`
--
ALTER TABLE `autovehicule`
  ADD PRIMARY KEY (`ID_Autovehicul`),
  ADD KEY `ID-Angajat_idx` (`ID_Angajat`);

--
-- Indexuri pentru tabele `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`ID_client`);

--
-- Indexuri pentru tabele `colet`
--
ALTER TABLE `colet`
  ADD PRIMARY KEY (`ID_colet`),
  ADD KEY `ID-Depozit_idx` (`ID_depozit`);

--
-- Indexuri pentru tabele `comanda`
--
ALTER TABLE `comanda`
  ADD PRIMARY KEY (`ID_Comanda`),
  ADD KEY `ID-Client_idx` (`ID_client`),
  ADD KEY `ID-Autovehicul_idx` (`ID_Autovehicul`);

--
-- Indexuri pentru tabele `comanda-colet`
--
ALTER TABLE `comanda-colet`
  ADD PRIMARY KEY (`ID-comanda-colet`),
  ADD KEY `ID-comanda_idx` (`ID-comanda`),
  ADD KEY `ID-colet_idx` (`ID-colet`);

--
-- Indexuri pentru tabele `departamente`
--
ALTER TABLE `departamente`
  ADD PRIMARY KEY (`ID_Departament`);

--
-- Indexuri pentru tabele `depozit`
--
ALTER TABLE `depozit`
  ADD PRIMARY KEY (`ID_depozit`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `angajati`
--
ALTER TABLE `angajati`
  MODIFY `ID_Angajat` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pentru tabele `departamente`
--
ALTER TABLE `departamente`
  MODIFY `ID_Departament` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD CONSTRAINT `ID-Departament` FOREIGN KEY (`ID_Departament`) REFERENCES `departamente` (`ID_Departament`);

--
-- Constrângeri pentru tabele `autovehicule`
--
ALTER TABLE `autovehicule`
  ADD CONSTRAINT `ID-Angajat` FOREIGN KEY (`ID_Angajat`) REFERENCES `angajati` (`ID_Angajat`);

--
-- Constrângeri pentru tabele `colet`
--
ALTER TABLE `colet`
  ADD CONSTRAINT `ID-Depozit` FOREIGN KEY (`ID_depozit`) REFERENCES `depozit` (`ID_depozit`);

--
-- Constrângeri pentru tabele `comanda`
--
ALTER TABLE `comanda`
  ADD CONSTRAINT `ID-Autovehicul` FOREIGN KEY (`ID_Autovehicul`) REFERENCES `autovehicule` (`ID_Autovehicul`),
  ADD CONSTRAINT `ID-Client` FOREIGN KEY (`ID_client`) REFERENCES `clienti` (`ID_client`);

--
-- Constrângeri pentru tabele `comanda-colet`
--
ALTER TABLE `comanda-colet`
  ADD CONSTRAINT `ID-colet` FOREIGN KEY (`ID-colet`) REFERENCES `colet` (`ID_colet`),
  ADD CONSTRAINT `ID-comanda` FOREIGN KEY (`ID-comanda`) REFERENCES `comanda` (`ID_Comanda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
