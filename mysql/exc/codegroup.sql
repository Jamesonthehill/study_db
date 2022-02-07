use world;

CREATE TABLE IF NOT EXISTS `codeGroup` (
  `seq` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
;

drop table codeGroup;
drop table code	;

CREATE TABLE IF NOT EXISTS `code` (
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(45) NULL,
  `codeGroup_seq` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codeGroup_seq`, `code`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_seq`)
    REFERENCES `codeGroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
	;
    
    insert into codeGroup(
		seq
        ,name
    )
    values(
		'infra001'
        ,'성별'
    );
    
    truncate codeGroup;
    
	insert into code(
		code
        ,name
        ,codeGroup_seq
    )
    values(
		'3'
        ,'기타'
        ,'infra001'
    );
    
    select * from code;
    select * from codegroup;
    truncate codeGroup;
    
    select a.seq ,a.name , b.code, b.name -- 나에게 이 데이터만 보여줘
    from codegroup a left join code b on a.seq = b.codegroup_seq; -- 데이터의 객체 설정, 그리고 왼쪽 조인, 내 입맛의 조건대로 보여줘 라는 뜻.