create table �μ�
(�μ��ڵ� char(3) primary key,
�μ��� char(10))

insert into �μ� values('D1','�ѹ���'), ('D2','������')

select * from �μ�

create table ���
(�����ȣ int primary key,
�̸� char(10),
�μ��ڵ� char(3)
foreign key references �μ�(�μ��ڵ�))

insert into ��� values (3, 'ȫ�浿', 'D3')

drop table �μ�

