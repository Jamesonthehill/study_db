use world; -- world라는 db저장소를 사용하겠다는 의미

create table member (
	seq int
    ,name varchar(45)
    ,id varchar(45)
    ,password int  -- 끝부분에만 , 생략해준다.
);  -- (control + enter ) 컨트롤 + 엔터를 쳐주세요.

insert into member (
	seq
    ,name
    ,id
    ,password
)
values(
	1
    ,'제임스'
    ,'Jamesonthehill'
    ,2022012425
);



select * from member;