use world;

CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`)) 
;

drop table book5;

CREATE TABLE IF NOT EXISTS `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review2_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review2_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`));
    
    drop table review5;
    
    insert into book5 (
		name
    )
    values(
		''
    );
    
    select * from book5;
    
    insert into review5(
		comment
        ,book5_no
    )
    values(
		'한번도 경험해보지 못한 내용이네요 ㅋ'
        ,5
    );
    
    select * from review5;
    
    select a.name, b.comment -- 당신이 원하는 변수로 지정
    from book5 a left join review5 b -- 지정한 변수와 어떤 테이블을 조인할건지
    on a.no = b.book5_no; -- 같은 영역을 지정 보통 시퀀스