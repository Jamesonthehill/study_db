CREATE TABLE IF NOT EXISTS `test2` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `seq2` INT NOT NULL,
  `seq3` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`seq`, `seq2`, `seq3`)
  );


  insert into test2 (
  seq2
  ,seq3
  ,name
  )
  values (
  1
  ,1
  ,'tony'
  );
  
  -- 컬럼 추가
  alter table test2 add tel varchar(50);
  
  -- 칼럼 삭제
  alter table test2 drop tel;
  
  -- 컬럼 타입 변경 
  alter table test2 modify tel int;
  
  -- 칼럼 이름 변경	
  alter table test2 change tel tele int;
  
  insert into test (
	name
    ,tel
  )
  values (
	
  );
 