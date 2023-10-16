select 지도교수, 교수명, 지도교수.전공코드, 전공명
from 지도교수 inner join 전공
on 지도교수.전공코드=전공.전공코드

select 학번, 이름, 교수명, 전공명
from 팀프로젝트 팀 join 지도교수 교
on 팀.조장=교.조장
join 전공 전
on 교.전공코드 = 전.전공코드