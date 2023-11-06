select 지도교수, 교수명
from 지도교수
where 조장 = (select top(1) 학번
					from 학생평가
				order by 점수 desc) -- 점수가 가장 높은 학생이 조장인 지도교수의 ID와 교수명

select * from 지도교수
select * from 학생평가

select 제품번호, 제품명
from 제품
where 제품번호 in (select 제품번호 from 판매 
							where 판매수량 >= 10) -- 판매수량이 10이상인 제품의 번호와 제품명을 출력

select * from 제품
select * from 판매

