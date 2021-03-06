-- MySQL Script generated by MySQL Workbench
-- Thứ sáu, 29 Tháng sáu Năm 2018 05:28:36 +07
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema winestore
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema winestore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `winestore` DEFAULT CHARACTER SET latin1 ;
USE `winestore` ;

-- -----------------------------------------------------
-- Table `winestore`.`chitiethoadon`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `winestore`.`chitiethoadon` (
  `maHD` INT(11) NOT NULL,
  `maSP` VARCHAR(45) NOT NULL,
  `soluong` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`maHD`, `maSP`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `winestore`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `winestore`.`user` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `gioitinh` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT '"Cap nhat"',
  `sdt` VARCHAR(45) NULL DEFAULT '"Cap nhat"',
  PRIMARY KEY (`username`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `winestore`.`dondathang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `winestore`.`dondathang` (
  `maDH` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL DEFAULT NULL,
  `ngayDH` DATETIME NULL DEFAULT NULL,
  `tongSL` INT(11) NULL DEFAULT NULL,
  `tongGT` INT(11) NULL DEFAULT NULL,
  `ttDH` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT 'Chưa giao',
  PRIMARY KEY (`maDH`),
  INDEX `fk_DDH_USERNAME_idx` (`username` ASC),
  CONSTRAINT `fk_DDH_USERNAME`
    FOREIGN KEY (`username`)
    REFERENCES `winestore`.`user` (`username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 46
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `winestore`.`sanpham`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `winestore`.`sanpham` (
  `maSP` VARCHAR(45) NOT NULL,
  `tenSP` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `giaSP` INT(11) NULL DEFAULT NULL,
  `linkAnhSP` VARCHAR(500) NULL DEFAULT NULL,
  `moTa` VARCHAR(1500) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `loaiSP` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `NSX` VARCHAR(45) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `slMua` INT(11) NULL DEFAULT '0',
  `soluong` INT(11) NULL DEFAULT '0',
  `slXem` INT(11) NULL DEFAULT '0',
  PRIMARY KEY (`maSP`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `winestore`.`sessions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `winestore`.`sessions` (
  `session_id` VARCHAR(128) COLLATE 'utf8mb4_bin' NOT NULL,
  `expires` INT(11) UNSIGNED NOT NULL,
  `data` TEXT COLLATE 'utf8mb4_bin' NULL DEFAULT NULL,
  PRIMARY KEY (`session_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
