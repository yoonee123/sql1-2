--1, 2��
select top (6) with ties title_id, qty from sales order by qty desc 
--3, 4��
select --distinct type å�о� 
* from titles
where type is not null
--5��
select title + '('+ title_id+ ')' 'å�̸�(å�ڵ�)' , price 
from titles