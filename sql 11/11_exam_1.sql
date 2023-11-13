-- 예제 1
create table #부서2
(deptno int identity(2001,1),
dname varchar(14) not null,
Loc varchar(13))
-- 예제 2
insert into #부서2 values('영업팀','경기도'),('판매팀','서울')

delete from #부서2 where dname = '판매팀'

set identity_insert #부서2 on

insert into #부서2(deptno,dname,Loc) values(2002,'판매팀','서울')

set identity_insert #부서2 off

select * from #부서2