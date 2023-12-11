-- in은 중복 자동 제거, join은 제거하지 않음 (select 뒤에 distinct 삽입해야함)

select distinct 학번, 이름, 팀.조장
from 팀프로젝트 팀 join 지도교수 교 
on 팀.조장 = 교.조장
where 전공코드 = 'D02'

select s1.조이름, s1.이름, s1.점수
from 학생평가 s1
where s1.점수 = (select max(점수) from 학생평가 s2
				where s2.조이름 = s1.조이름)

select s1.조이름, s1.이름, s1.점수 from 학생평가 s1
where s1.점수 in (select max(점수) 
	 				from 학생평가 
				group by 조이름)


