-- ���� 1
create table #�μ�2
(deptno int identity(2001,1),
dname varchar(14) not null,
Loc varchar(13))
-- ���� 2
insert into #�μ�2 values('������','��⵵'),('�Ǹ���','����')

delete from #�μ�2 where dname = '�Ǹ���'

set identity_insert #�μ�2 on

insert into #�μ�2(deptno,dname,Loc) values(2002,'�Ǹ���','����')

set identity_insert #�μ�2 off

select * from #�μ�2