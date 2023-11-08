select 전공명
from 전공
where 전공코드 = (select 전공코드
					from 지도교수
					where 교수명 = '김철수') -- 'D02'

select 학번, 이름, 점수
from 성적
where 점수 >= (select AVG(점수)
				from 성적)

select 학번, 이름, 조장
from 팀프로젝트 
where 조장 in (select 조장
				from 지도교수
				where 전공코드 = 'D02')

-- 위와 아래가 같음

select 학번, 이름, 팀.조장
from 팀프로젝트 팀 join 지도교수 교 
on 팀.조장 = 교.조장
where 전공코드 = 'D02'




