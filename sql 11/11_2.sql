create table �μ�
(deptno int not null,
dname varchar(14) not null,
Loc varchar(13))

insert into �μ� values (1001,'������','��⵵')
insert into �μ� values (1002,'�Ǹ���','����')
insert into �μ� values (1003,'ȸ����','��õ')

select * from �μ�

create table emp 
(id int identity, -- �����Ǹ� �״�� ��ȣ �ǳʶ� ex) 1, 3, 4
name char(10))

insert into emp values('ȫ�浿1'),('�輱��2')

delete from emp where name = '�輱��' --�輱�� ����

set identity_insert emp on

-- ����) �� �̸� �����ϸ� �ȵ�
insert into emp(id,name) values(2,'�輱��')

set identity_insert emp off

select * from emp

select * into #��ǰ
from ��ǰ
where 1 = 0

insert into #��ǰ
select * from #��ǰ

drop table #��ǰ

select ����, ���� into #��������ǰ
from ��ǰ
where 1 = 0

insert into #��������ǰ
	select ����, avg(����)
	from ��ǰ
	group by ����

	select * from #��������ǰ