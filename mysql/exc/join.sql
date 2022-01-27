use world;

CREATE TABLE IF NOT EXISTS `book3` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `publisher_cd` INT NOT NULL,
  PRIMARY KEY (`no`));
  
   drop table book3;
  
  CREATE TABLE IF NOT EXISTS `publisher` (
  `no` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`no`));

select * from book3;
select * from publisher;

insert into book3(
	name
    ,publisher_cd
)
values(
'제빵왕  김탁구'
,4
);	

insert into publisher(
	name
)
values(
'아이콕스'
);	

select * from publisher;

select 
		a.no
		,a.name
		,a.publisher_cd
		,b.name
	from book3 as a
-- left join publisher as b on b.no = a.publisher_cd;
    inner join publisher as b on b.no = a.publisher_cd;
    
select 
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no = a.publisher_cd) as publisher_name
    from book3 as a;
    
select 
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no = a.publisher_cd)
    from book3 as a;
    
select 
	a.no
    ,a.name
    ,a.publisher_cd
    ,(select name from publisher where no = a.publisher_cd)
    from book3 as a;
    
    select 
	a.no
    ,a.name
    ,a.publisher_cd
    ,getPublisherName -- 함수 
    from book3 as a;