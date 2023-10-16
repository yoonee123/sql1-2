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