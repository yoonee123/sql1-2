create table ��ǰ
(��ǰ�ڵ� char(3),
��ǰ�� char(20),
���� char(20) check(���� in('��Ʈ','����','����','��ĿƮ','����')),
���� char(10),
�ܰ� int,
�԰����� datetime)  

alter table ��ǰ
alter column ��ǰ�ڵ� char(3) not null

alter table ��ǰ
add constraint pf_��ǰ�ڵ� primary key (��ǰ�ڵ�)

insert into ��ǰ values('M1','����Ʈ','��Ʈ','��',150000,'20000110')
insert into ��ǰ values('M2','������Ʈ','��Ʈ','ī��',150000,'20050205')
insert into ��ǰ values('M3','¤������','����','����',150000,'20050711')
insert into ��ǰ values('M4','�ĵ�����','����','īŰ',150000,'20061126')
insert into ��ǰ values('M5','��������','����','��',150000,'20051205')
insert into ��ǰ values('M6','�ָ���ĿƮ','��ĿƮ','���',150000,'20060310')
insert into ��ǰ values('M7','�����۵����','����','���',150000,'20060322')

select * from ��ǰ

drop table ��ǰ

create table �ֹ�
(�ֹ��ڵ� int identity primary key,
���̵� char(10),
��ǰ�ڵ� char(3) foreign key references ��ǰ(��ǰ�ڵ�) 
on update cascade on delete cascade,
���� int)  

INSERT INTO �ֹ� VALUES('fly123','m1',2)
INSERT INTO �ֹ� VALUES('beauty1','m3',3)
INSERT INTO �ֹ� VALUES('cool333','m2',1)
INSERT INTO �ֹ� VALUES('dry77','m7',2)
INSERT INTO �ֹ� VALUES('bear1004','m6',2)

-- ��ǰ�ڵ� m0�� m1���� ����

update ��ǰ 
set ��ǰ�ڵ� = 'M0' 
where ��ǰ�ڵ� = 'M1'

-- ��ǰ�ڵ尡 m7�� ���� ����

delete from ��ǰ
where ��ǰ�ڵ� = 'M7'

-- �ֹ��ڵ� 5�� ��ǰ�ڵ带 m2. ������ 10���� ����

update �ֹ�
set ��ǰ�ڵ� = 'm2', ���� = 10
where �ֹ��ڵ� = 5

select * from �ֹ�

drop table �ֹ�