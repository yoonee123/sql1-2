select 전공.전공코드, 전공명, 교수명 as 지도교수
from 전공 left outer join 지도교수 -- 레프트 아우터 조인
on 전공.전공코드=지도교수.전공코드

select 성적.학번, 성적.이름, 팀프로젝트.이름 as 참여자, 점수, 조장
from 팀프로젝트 full outer join 성적 -- 풀 아우터 조인
on 팀프로젝트.학번 = 성적.학번

select 조원.학번 조원학번, 조원.이름 조원이름, 조장.학번 조장학번, 조장.이름 조장이름 
from 팀프로젝트 조원 join 팀프로젝트 조장 -- 셀프 조인
on 조원.조장 = 조장.학번

select 학번, 이름
from 팀프로젝트
union
select 지도교수, 교수명
from 지도교수 -- 열의 수와 형식이 같아야함, 중복 제외

select 교수명
from 지도교수
union all
select 교수명
from 지도교수 -- 중복 포함 출력

select * from 성적
select * from 팀프로젝트
