create table 부서
(deptno int not null,
dname varchar(14) not null,
Loc varchar(13))

insert into 부서 values (1001,'영업팀','경기도')
insert into 부서 values (1002,'판매팀','서울')
insert into 부서 values (1003,'회계팀','인천')

select * from 부서

create table emp 
(id int identity, -- 삭제되면 그대로 번호 건너뜀 ex) 1, 3, 4
name char(10))

insert into emp values('홍길동1'),('김선달2')

delete from emp where name = '김선달' --김선달 삭제

set identity_insert emp on

-- 주의) 열 이름 생략하면 안됨
insert into emp(id,name) values(2,'김선달')

set identity_insert emp off

select * from emp

select * into #제품
from 제품
where 1 = 0

insert into #제품
select * from #제품

drop table #제품

select 종류, 가격 into #종류별제품
from 제품
where 1 = 0

insert into #종류별제품
	select 종류, avg(가격)
	from 제품
	group by 종류

	select * from #종류별제품