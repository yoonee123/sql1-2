create table #�μ�
(deptno int, 
dname varchar(14) not null,
loc varchar(13))

alter table #�μ�
add primary key(deptno)

alter table #�μ�
alter column deptno int not null

drop table #�μ�
