create table #member1
(�ֹι�ȣ char(14) constraint u_id unique,
�̸� varchar(30))

insert into #member1 values ('920101-1233445','ȫ�浿')
insert into #member1 values ('920101-1233445','�輱��')

select * from #member1

create table #member2
(�ֹι�ȣ char(14),
�̸� varchar(30), unique(�ֹι�ȣ))

insert into #member2 values ('920101-1233445','ȫ�浿')
insert into #member2 values ('920101-1233445','�輱��')

drop table #member1