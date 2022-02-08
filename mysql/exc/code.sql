use alpha;

INSERT INTO `alpha`.`infrcode`
(
`ifcdName`,
`ifcdUseNy`,
`ifcdOrder`,
`ifcdDelNy`,
`regDateTime`,
`regDateTimeSvr`,
`modDateTime`,
`modDateTimeSvr`,
`ifcgSeq`
)
VALUES
(
"기타"
,1
,3
,0
,now()
,now()
,now()
,now()
,12
);


DROP table infrcode;

select
a.ifcgSeq
, a.ifcgName
, b.ifcdSeq
, b.ifcdName
, b.ifcdOrder
from infrcodegroup a
	left join infrcode b on b.ifcgSeq = a.ifcgSeq
order by a.ifcgSeq, b.ifcdOrder;

select * from infrCode;
select * from infrnationality;