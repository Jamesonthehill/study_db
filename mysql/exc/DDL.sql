use world;

create table test3 (
	seq int
    ,name varchar(45)
    ,id varchar(45)
    ,password int
    ,address varchar(45)
);

alter table test3 add tel int;
alter table test3 drop tel;
alter table test3 modify tel int ;
alter table test3 change tel pongpong varchar(45);
select * from test3;