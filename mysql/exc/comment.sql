use world;

CREATE TABLE IF NOT EXISTS `book5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`no`));

drop table book5;


CREATE TABLE IF NOT EXISTS `review5` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` VARCHAR(45) NULL,
  `book5_no` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`no`, `book5_no`),
  INDEX `fk_review2_book51_idx` (`book5_no` ASC) VISIBLE,
  CONSTRAINT `fk_review2_book51`
    FOREIGN KEY (`book5_no`)
    REFERENCES `book5` (`no`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    drop table review5;
    
    insert into book5 (
		name
    )
		values (
        '파피용'
        );
        
		insert into review5 (
		comment
        ,book5_no
    )
		values (
        '잘읽어봣습니다. 책 읽기 싫어하는데 재밌네요'
        ,3
        );
        
        select * from book5;
        select * from review5;
        
	select
        a.name
        ,b.comment 
        from book5 a left join review5 b
        on b.book5_no = a.no; -- on 뒤는 조인조건을 말함 
        -- inner join review5 b on b.book5_no = a.no; -- book5 a 인 테이블과 review5 b 테이블을 내부조인 하돼 book5_no 랑 a.no는 같다
        
        
	select 
		a.comment
		,b.name
		from book5 as b
  left join review5 as a on a.no = b.no;
  --  inner join publisher as b on b.no = a.publisher_cd;
    
