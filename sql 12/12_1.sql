create table #member1
(주민번호 char(14) constraint u_id unique, -- 유니크는 null가능, pk는 null 불가능 (둘다 null이 중복은 안됨)
이름 varchar(30))

insert into #member1 values ('920101-1233445','홍길동')
insert into #member1 values ('920101-1233445','김선달')

select * from #member1

create table #member2
(주민번호 char(14),
이름 varchar(30), unique(주민번호))

insert into #member2 values ('920101-1233445','홍길동')
insert into #member2 values ('920101-1233445','김선달')

drop table #member1
