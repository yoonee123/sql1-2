select sum(가격)/count(*) 
from 제품
where 가격 is not null

select sum(가격)/count(가격)
from 제품

select avg(가격) from 제품