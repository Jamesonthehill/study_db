use alpha;

CREATE TABLE IF NOT EXISTS `infrNationality` (
  `ifnaSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifnaName` VARCHAR(50) NULL,
  `ifnaNameKor` VARCHAR(50) NULL,
  `ifnaNameEng` VARCHAR(50) NULL COMMENT ' 대한민국 ㅣ 대한민국 ㅣ S.Korea ㅣ KR ㅣ KOR',
  `ifnaCode2Char` CHAR(2) NULL,
  `ifnaCode3Char` CHAR(3) NULL,
  `ifnaUseNy` TINYINT NULL,
  `ifnaOrder` TINYINT NULL,
  `ifnaDesc` VARCHAR(255) NULL,
  `ifnaDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTmeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTmeSvr` DATETIME NULL,
  PRIMARY KEY (`ifnaSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci




INSERT INTO `alpha`.`infrnationality`
(
`ifnaName`,
`ifnaCode2Char`,
`ifnaCode3Char`,
`ifnaUseNy`,
`ifnaOrder`,
`ifnaDelNy`,
`regDateTime`,
`regDateTmeSvr`,
`modDateTime`,
`modDateTmeSvr`)
VALUES
(
	"한국"
    ,"KR"
    ,"KOR"
	,1
    ,2
    ,0
    ,now()
    ,now()


);

