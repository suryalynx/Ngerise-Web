-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ifixit
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ifixit
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ifixit` DEFAULT CHARACTER SET utf8 ;
USE `ifixit` ;

-- -----------------------------------------------------
-- Table `ifixit`.`DataFeedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataFeedback` (
  `idFeedback` INT NOT NULL,
  `rating` INT NULL,
  `deskripsi` VARCHAR(1000) NULL,
  `media` VARCHAR(45) NULL,
  PRIMARY KEY (`idFeedback`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`DataListKomponen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataListKomponen` (
  `id` INT NOT NULL,
  `namaKomponen` VARCHAR(45) NULL,
  `Jenis` VARCHAR(45) NULL,
  `merk` VARCHAR(45) NULL,
  `Harga` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`DataListService`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataListService` (
  `id` INT NOT NULL,
  `namaService` VARCHAR(45) NULL,
  `harga` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`DataBillKomponen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataBillKomponen` (
  `idService` INT NOT NULL,
  `idTicket` INT NULL,
  PRIMARY KEY (`idService`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`DataBillService`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataBillService` (
  `idService` INT NOT NULL,
  `idTicket` INT NULL,
  PRIMARY KEY (`idService`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`DataTicket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataTicket` (
  `idTicket` INT NOT NULL,
  `idUser` INT NULL,
  `jenisKeluhan` VARCHAR(1000) NULL,
  `tipeDevice` VARCHAR(45) NULL,
  `media` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`idTicket`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`DataCustomer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`DataCustomer` (
  `idCustomer` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `alamat` VARCHAR(45) NULL,
  `nomorTlp` VARCHAR(45) NULL,
  PRIMARY KEY (`idCustomer`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ifixit`.`dataBarang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ifixit`.`dataBarang` (
  `idBarang` INT NOT NULL,
  `jenis` VARCHAR(45) NULL,
  `merk` VARCHAR(45) NULL,
  `tipe` VARCHAR(45) NULL,
  `panjang` VARCHAR(45) NULL,
  `lebar` VARCHAR(45) NULL,
  `berat` VARCHAR(45) NULL,
  `OS` VARCHAR(45) NULL,
  `storage` VARCHAR(45) NULL,
  `memory` VARCHAR(45) NULL,
  `battery` VARCHAR(45) NULL,
  PRIMARY KEY (`idBarang`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ifixit`.`dataBarang`
-- -----------------------------------------------------
START TRANSACTION;
USE `ifixit`;
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0011, 'Laptop', 'Mackbook', 'Pro 13 (M2)', '30,41', '21,24', '1,38', 'MacOs', '256 GB', '8 GB', '58,2WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0012, 'Laptop', 'Mackbook', 'Pro 14 (M2 Pro)', '31,26', '22,12', '1,60', 'MacOs', '512 GB', '16 GB', '70 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0013, 'Laptop', 'Mackbook', 'Pro 16 (M2 Max)', '31,26', '22,12', '2,15', 'MacOs', '1 TB', '32 GB', '70 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0014, 'Laptop', 'Mackbook', 'Air (M2)', '30,41', '21,5', '1,25', 'MacOs', '256 512 GB', '8 GB', '52,6 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0015, 'Laptop', 'Mackbook', 'Air (M1)', '30,41', '21,5', '1,25', 'MacOs', '256 512 GB', '8 GB', '49,9 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0016, 'Laptop', 'Dell', 'Vostro 3405', '20', '50', '1.59', 'Windows', '256 GB', '4 GB', '42 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0017, 'Laptop', 'Dell', 'Vostro 3401', ' 23.95', '32.87 ', '1.64', 'Windows', '1 TB', '4 GB', '42 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0018, 'Laptop', 'Dell', 'Inspiron 5402', '32.13', '21.6', '1.429', 'Windows', '512 GB', '8 GB', '53 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (0019, 'Laptop', 'Dell', 'Gaming G3 3500', '36,5', '25,4', '2,56', 'Windows', '512 GB', '16 GB', '68 Whr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00110, 'Laptop', 'Dell', 'Gaming G5 5500 17', '36,5', '25,4', '2,56', 'Windows', '1 TB', '16 GB', '65 Whr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00111, 'Laptop', 'Lenovo', 'Ideapad Gaming 3', NULL, NULL, NULL, 'Windows', '512 GB', '8 GB', '45 WHr');
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00112, 'Laptop', 'Lenovo', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00113, 'Laptop', 'Lenovo', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00114, 'Laptop', 'Lenovo', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00115, 'Laptop', 'Lenovo', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00116, 'Laptop', 'Asus', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00117, 'Laptop', 'Asus', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00118, 'Laptop', 'Asus', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00119, 'Laptop', 'Asus', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00120, 'Laptop', 'Asus', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00121, 'Laptop', 'Acer', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00122, 'Laptop', 'Acer', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00123, 'Laptop', 'Acer', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00124, 'Laptop', 'Acer', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);
INSERT INTO `ifixit`.`dataBarang` (`idBarang`, `jenis`, `merk`, `tipe`, `panjang`, `lebar`, `berat`, `OS`, `storage`, `memory`, `battery`) VALUES (00125, 'Laptop', 'Acer', NULL, NULL, NULL, NULL, 'Windows', NULL, NULL, NULL);

COMMIT;

