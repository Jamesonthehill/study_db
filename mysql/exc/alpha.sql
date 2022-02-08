create database alpha;

use alpha;

CREATE TABLE IF NOT EXISTS `infrCodeGroup` (
  `ifcgSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcgDelNy` TINYINT NOT NULL,
  `ifcgSeqAnother` VARCHAR(50) NULL,
  `ifcgName` VARCHAR(100) NULL,
  `ifcgNameEng` VARCHAR(100) NULL,
  `ifcgUseNy` TINYINT NULL,
  `ifcgOrder` TINYINT NULL,
  `ifcgReferenceV1` VARCHAR(50) NULL,
  `ifcgReferenceV2` VARCHAR(50) NULL,
  `ifcgReferenceV3` VARCHAR(50) NULL,
  `ifcgReferenceI1` INT NULL,
  `ifcgReferenceI2` INT NULL,
  `ifcgReferenceI3` INT NULL,
  `ifcgDesc` VARCHAR(255) NULL,
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
  PRIMARY KEY (`ifcgSeq`));



CREATE TABLE IF NOT EXISTS `infrCode` (
  `ifcdSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifcdSeqAnother` VARCHAR(50) NULL,
  `ifcdName` VARCHAR(50) NOT NULL,
  `ifcdNameEng` VARCHAR(50) NULL,
  `ifcdNameLang1` VARCHAR(50) NULL,
  `ifcdNameLang2` VARCHAR(50) NULL,
  `ifcdNameLang3` VARCHAR(50) NULL,
  `ifcdNameLang4` VARCHAR(50) NULL,
  `ifcdNameLang5` VARCHAR(50) NULL,
  `ifcdUseNy` TINYINT NULL,
  `ifcdOrder` TINYINT NULL,
  `ifcdReferenceV1` VARCHAR(50) NULL,
  `ifcdReferenceV2` VARCHAR(50) NULL,
  `ifcdReferenceV3` VARCHAR(50) NULL,
  `ifcdReferenceI1` INT NULL,
  `ifcdReferenceI2` INT NULL,
  `ifcdReferenceI3` INT NULL,
  `ifcdDesc` VARCHAR(255) NULL,
  `ifcdDelNy` TINYINT NOT NULL,
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
  `ifcgSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifcdSeq`),
  INDEX `fk_infrCode_infrCodeGroup_idx` (`ifcgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrCode_infrCodeGroup`
    FOREIGN KEY (`ifcgSeq`)
    REFERENCES `infrCodeGroup` (`ifcgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


  drop table infrCode;
  drop table infrCodeGroup;
  
  
  
  INSERT INTO `alpha`.`infrcodegroup`
(
`ifcgName`,
`ifcgUseNy`,
`ifcgOrder`,
`ifcgDelNy`,   -- delny 는 삭제횟수를 묻는것이다.infrcode
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
'회원.주소구분'
,1
,12
,0
,now()
,now()
,now()
,now()
);

select * from infrcodegroup;
select * from infrcode;
