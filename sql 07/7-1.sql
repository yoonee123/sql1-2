-- 3-1
select top (1) 이름, 점수 
from 성적
where 이름 like '김%'
-- 3-2
select 반, min(점수) as '반별최저점수'
from 성적
group by 반
-- 3-3
select 조이름, AVG (점수) as 평균점수
from 학생평가
where 조이름 is not null
group by 조이름
having AVG(점수) >= 85

-- 4-1
select 조이름, avg(점수) as 평균점수
from 학생평가
group by 조이름
-- 4-2
select 조이름, avg(점수) as 평균점수
from 학생평가
where 조이름 not in ('학교짱')
group by 조이름
-- 4-3
select 조이름, avg(점수) as 평균점수
from 학생평가
where 조이름 not in ('학교짱')
group by all 조이름

-- 5-1 
select 종류, avg(가격) as 평균가격
from 제품
group by 종류

select 종류, avg(가격) as 평균가격
from 제품
group by 종류 with rollup

select * from 지도교수
select * from 전공

select 지도교수, 교수명, 지도교수.전공코드, 전공명
from 지도교수 inner join 전공
on 지도교수.전공코드=전공.전공코드