use world;

CREATE TABLE IF NOT EXISTS `test` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`));
  
  insert into test(
   name
  ) value (
  'hok'
  );
  
  select * from test;

-- unique, primary key, foreign key : 유일한 데이터
-- pk : primary key : 중복되는 데이터는 불허
-- nn: not null : null 값을 허용하지 않는다. (데이터가 무조건 들어와야한다)
-- uq: 유니크 : 중복되는 데이터는 불허
-- b : 바이너리 파일 저장
-- un : unsigned data : 양수만
-- -128   	0   	127 : 0 ~255
-- zf  : zerofill : 5.7 (5,2) -> 00005.7
-- ai  : auto increment : 자동증가 
-- g : auto increment 의 다른형태

