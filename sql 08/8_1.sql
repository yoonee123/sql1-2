select title as 책명, pub_name as 출판사명, qty as 수량
from titles t join publishers p
on t.pub_id = p.pub_id
join sales s
on t.title_id = s.title_id
where qty >= 10
order by 출판사명 

select * from titles
select * from publishers
select * from sales