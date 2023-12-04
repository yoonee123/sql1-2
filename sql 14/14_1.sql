-- �� ����� (���Ǽ�, ����)

create view titles_view
as select title,type,price 
from titles

select * from titles_view

drop view titles_view

-- titles_copy�� �����ϰ� ��� ������ 15�޷� �̻��� �׸��� �����Ͻÿ�.

select * into titles_copy
from titles

create view titles_copy_view
as select title_id, type, price
from titles_copy
where price >= 15.00

-- å ������ 10�޷��� ����

update titles_copy_view
set price = 10
where title_id = 'BU1032' -- å ������ 10�޷��̹Ƿ� ���ǿ� �����ʾ� ������

-- with check option

alter view titles_copy_view
as select title_id, type, price
from titles_copy
where price >= 15.00
with check option -- ���ǿ� ���� ������ update�� ���� �ʵ��� ����

-- å ������ 10�޷��� ���� (����)

update titles_copy_view
set price = 10
where title_id = 'BU7832'

select * from titles_copy_view

-- �信 ���� ���� Ȯ��

exec sp_help 

-- �䰡 ��� ����������� ���� ���

exec sp_helptext titles_view




