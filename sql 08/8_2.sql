select s.stdName 이름, addr 지역, c.clubName 동아리이름, roomNo 동방번호
from stdTbl s join stdclubTbl sc
on s.stdName = sc.stdName
join clubTbl c
on sc.clubName = c.clubName

select s.stdName 이름, addr 지역, c.clubName 동아리이름, roomNo 동방번호
from stdTbl s left outer join stdclubTbl sc
on s.stdName = sc.stdName
left outer join clubTbl c
on sc.clubName = c.clubName



select * from stdtbl
select * from stdclubtbl
select * from clubtbl