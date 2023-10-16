-- 5-1 
select 종류, avg(가격) as 평균가격
from 제품
group by 종류

select 종류, avg(가격) as 평균가격
from 제품
group by 종류 with rollup

select * from 지도교수
select * from 전공