-- ���� 1��

create view å_���ǻ�view
as select title, pub_name
from titles t join publishers p
on t.pub_id = p.pub_id

select * from å_���ǻ�view

exec sp_helptext å_���ǻ�view

-- ���� 2��

create view å���
as select type as å�о�, AVG(price) ��հ���
from titles group by type

select * from å���

-- ���� 3��

create table å2
(å�ڵ� varchar(6),
å�̸� varchar(80),
�о� char(12),
���� money)

insert into å2
select title_id, title, type, price
from titles

create view å��������view
as select å�ڵ�, å�̸�, ����
from å2
where ���� >= 15
with check option

select * from å��������view

insert into å��������view values('K12345', '��ǻ��', 15)

update å��������view
set ���� = 10
where å�ڵ� = 'K12345'

select * from titles
select * from publishers