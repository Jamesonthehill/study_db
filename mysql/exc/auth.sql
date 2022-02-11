use alpha;

select 
a.ifmmSeq
, a.ifmmDelNy
, a.ifmmName
, a.ifmmId 
, a.ifmmPassword
, b.ifmpTelecomCd
, b.ifmpTypeCd
, b.ifmpNumber
from infrmember a
	left join infrmemberphone b on a.ifmmSeq = b.ifmpSeq;


select * from infrcode;



CREATE TABLE IF NOT EXISTS `infrMenu` ( -- 1번
  `ifmuSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifmuDelNy` TINYINT NOT NULL,
  `ifmuAdminNy` TINYINT NULL,
  `ifmuName` VARCHAR(50) NOT NULL,
  `ifmuNameEng` VARCHAR(50) NULL,
  `ifmuUrl` VARCHAR(100) NULL,
  `ifmuParents` BIGINT NULL,
  `ifmuDepth` TINYINT NULL,
  `ifmuUseNy` TINYINT NULL,
  `ifmuOrder` TINYINT NULL,
  `ifmuDesc` VARCHAR(255) NULL,
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
  PRIMARY KEY (`ifmuSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

drop table infrmenu;


CREATE TABLE IF NOT EXISTS `infrAuth` ( -- 2번
  `ifatSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifatDelNy` TINYINT NOT NULL,
  `ifatAdminNy` TINYINT NULL,
  `ifatName` VARCHAR(50) NOT NULL,
  `ifatNameEng` VARCHAR(50) NULL,
  `ifatUseNy` TINYINT NULL,
  `ifatOrderNy` TINYINT NULL,
  `ifatDesc` VARCHAR(255) NULL,
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
  PRIMARY KEY (`ifatSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

drop table infrauth;


CREATE TABLE IF NOT EXISTS `infrAuthMenu` (  -- 3번
  `ifauSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifauRoleCd` TINYINT NULL,
  `ifauUseNy` TINYINT NULL,
  `ifauOrder` TINYINT NULL,
  `ifauDesc` VARCHAR(255) NULL,
  `ifauDelNy` TINYINT NOT NULL,
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
  `ifatSeq` BIGINT UNSIGNED NOT NULL,
  `ifmuSeq` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`ifauSeq`),
  INDEX `fk_infrAuthMenu_infrAuth1_idx` (`ifatSeq` ASC) VISIBLE,
  INDEX `fk_infrAuthMenu_infrMenu1_idx` (`ifmuSeq` ASC) VISIBLE,
  CONSTRAINT `fk_infrAuthMenu_infrAuth1`
    FOREIGN KEY (`ifatSeq`)
    REFERENCES `infrAuth` (`ifatSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_infrAuthMenu_infrMenu1`
    FOREIGN KEY (`ifmuSeq`)
    REFERENCES `infrMenu` (`ifmuSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

drop table infrauthmenu;



INSERT INTO `alpha`.`infrauth`
(
`ifatDelNy`,
`ifatAdminNy`,
`ifatName`,
`ifatUseNy`,
`ifatOrderNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`)
VALUES
(
0
,1
,"회원관리자"
,1
,3																																							
, now()
,now()
,now()
,now());

select * from infrauth;


INSERT INTO `alpha`.`infrmenu`
(
`ifmuDelNy`,  -- 삭제여부
`ifmuAdminNy`, -- 관리자1, 회원 0
`ifmuName`, -- 이름
`ifmuParents`, -- 자료구조 부모의 숫자
`ifmuDepth`, -- 트리의 깊이
`ifmuUseNy`, -- 유저에게 보이게 1 , 안보이게 0
`ifmuOrder`, -- 차등 순서숫자 부여
`regDateTime`, -- 최초에 한번 등록 시간 (수정)
`regDateTimeSvr`, -- 최초에 한번 등록 시간 (수정) reg값은 최초임, 한번 저장하면 바뀌지 않음
`modDateTime`, -- 수정할 때 마다 바뀌는 시간
`modDateTimeSvr`) -- 수정할 때 마다 바뀌는 시간, mod는 유연하게 계속 갱신된다.
VALUES
(
0
,1
,"메뉴관리"
,3
,2
,1
,4
,now()
,now()ww
,now()
,now());


INSERT INTO `alpha`.`infrauthmenu`
(
`ifauRoleCd`,
`ifauUseNy`,
`ifauDelNy`,
`ifatSeq`,
`ifmuSeq`)
VALUES
(
2 -- 1: 관리 (목록, 등록, 수정, 삭제), 2: 조회 (목록, 상세) || 목록, 등록, 수정, 삭제
,2
,0
,3 -- 권한
,2); -- 메뉴코드
 
select * from infrauthmenu;

select * from infrmenu;
select * from infrauth;
select 
a.ifatSeq
, a.ifatName
, b.ifmuOrder
, b.ifmuName
from infrauth a
	left join infrmenu b on a.ifatSeq = b.ifmuSeq;


select 
	a.ifatSeq
    ,(Select ifatName from infrAuth where ifatSeq =a.ifatSeq) as ifatName
from infrAuthMenu a
	where 1=1
		and a.ifatSeq = 3;