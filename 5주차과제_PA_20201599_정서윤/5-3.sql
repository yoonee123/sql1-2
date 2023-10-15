select 종류, avg(가격) as 평균가격
from 제품
where 가격 > 50000
group by 종류


select 종류, avg(가격) as 평균가격
from 제품
where 가격 > 50000
group by all 종류

select * from 제품