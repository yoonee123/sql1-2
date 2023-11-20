create table #何辑
(deptno int, 
dname varchar(14) not null,
loc varchar(13))

alter table #何辑
add primary key(deptno)

alter table #何辑
alter column deptno int not null

drop table #何辑
