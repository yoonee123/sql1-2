select title as å��, pub_name as ���ǻ��, qty as ����
from titles t join publishers p
on t.pub_id = p.pub_id
join sales s
on t.title_id = s.title_id
where qty >= 10
order by ���ǻ�� 

select * from titles
select * from publishers
select * from sales