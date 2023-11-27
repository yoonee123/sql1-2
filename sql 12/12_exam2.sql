create table #부서
(deptno int, 
dname varchar(14) not null,
loc varchar(13))

alter table #부서
add primary key(deptno)

alter table #부서
alter column deptno int not null

drop table #부서
