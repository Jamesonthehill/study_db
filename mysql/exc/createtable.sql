use world;


CREATE TABLE IF NOT EXISTS `cafe` (
  `seq` INT UNSIGNED NOT NULL,
  `cafe_name` VARCHAR(45) NULL,
  `table_number` INT NULL,
  `seats_number` INT NULL,
  `address` VARCHAR(45) NULL,
  `state` INT NULL,
  `representative` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;

-- 데이터 입력
insert into cafe (
seq
,cafe_name
,table_number
,seats_number
,address
,state
,representative
)	
values (
1
,'별다방'
,1
,2
,'서울시 어디쯤'
,1
,'장동건'
);

select * from  cafe;