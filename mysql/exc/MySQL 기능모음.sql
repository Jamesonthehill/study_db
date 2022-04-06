use alpha;

select * from thproduct;
select * from thproductbuy;
select * from thproductoption;
select * from thproductoptiondetail;
select * from thcoupon;
select * from infrmembercoupon;
select * from infrcode;
select * from infrCodeGroup;
select * from infrmenu;
select * from infrcategory;
select * from infrmember;
select * from alpha.infrmember order by ifmmSeq desc;
select * from alpha.infrauth;
select * from infrmemberphone;
select * from infrmemberemail;
select * from infr;

ALTER TABLE infrmemberemail MODIFY ifmmSeq bigint NULL;

 alter table infrmemberemail modify ifmmSeq bigint;
 alter table thproductbuy change thpoOptionCd thpbOptionCd tinyint;
 alter table infrmember add ifmmPassword2 varchar(255); 
 alter table thproductoption add thpoDepth tinyint; 
alter table infrmemberemail modify ifmmSeq bigint auto_increment;
ALTER TABLE infrmemberphone MODIFY ifmmSeq bigint NOT NULL AUTO_INCREMENT;
ALTER TABLE infrmemberphone MODIFY ifmmSeq INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;
ALTER TABLE infrmember MODIFY COLUMN ifmmPassword2 varchar(255) AFTER ifmmPassword ; -- 이게 컬럼위치변경 해주는것 ALTER TABLE 테이블이름 MODIFY COLUMN 위치바꿀컬럼명 데이터타입 AFTER 기준된컬럼이름;