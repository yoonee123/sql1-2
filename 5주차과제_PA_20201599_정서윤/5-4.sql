select 반, 성별, AVG(점수) as 평균점수
from 성적
--group by 반, 성별 with rollup
group by cube(반, 성별)	