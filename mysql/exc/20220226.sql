select USER();

select * from thproduct;
select * from thproductbuy;
select * from thproductoption;
select * from thproductoptiondetail;
select * from thcoupon;
select * from infrmembercoupon;
select * from infrcode;
select * from infrCodeGroup;


drop table thproductoption;


-- 2022-02-27 00:01:20
-- 2022-02-27 22:30:20
CREATE TABLE IF NOT EXISTS `alpha`.`thProductOption` (
  `thpoSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `thpoName` VARCHAR(100) NOT NULL,
  `thpoOrder` TINYINT NULL,
  `thpoDelNy` TINYINT NULL,
  `thpoUseNy` TINYINT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`thpoSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS `alpha`.`thProductOptionDetail` (
  `thpodSeq` BIGINT UNSIGNED NOT NULL,
  `thpodName` VARCHAR(100) NOT NULL,
  `thpodDefaultyNy` TINYINT NULL,
  `thpodColor` TINYINT NULL,
  `thpodSize` TINYINT NULL,
  `thpodAddition` TINYINT NULL,
  `thpodNumber` INT NULL,
  `thpodOrder` TINYINT NULL,
  `thpodDelNy` TINYINT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  `thpoSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`thpodSeq`),
  INDEX `fk_thProductOptionDetail_thProductOption1_idx` (`thpoSeq` ASC) VISIBLE,
  CONSTRAINT `fk_thProductOptionDetail_thProductOption1`
    FOREIGN KEY (`thpoSeq`)
    REFERENCES `alpha`.`thProductOption` (`thpoSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


drop table thproductoption;
drop table thproductoptiondetail;


