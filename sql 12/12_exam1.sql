create table #emp_c
(emp_no varchar(15) constraint e_id unique, 
emp_name varchar(30), 
tel_no varchar(20))

insert into #emp_c values ('em000','������','010-000-3333')
insert into #emp_c values ('em000','�ܳ���','010-111-2222')

alter table #emp_c
drop constraint e_id

create table #emp_t
(emp_no varchar(15) unique, 
emp_name varchar(30), 
tel_no varchar(20))

insert into #emp_t values ('em000','������','010-000-3333')
insert into #emp_t values ('em000','�ܳ���','010-111-2222')

alter table #emp_t
drop constraint UQ__#emp_t____129850FB8D6E2B0B -- ����ũ�� �̸��� ������ ����� �Է�

exec sp_helpconstraint #emp_c -- tempdb������ ���� ����
exec sp_helpconstraint #emp_t

drop table #emp_c
drop table #emp_t
