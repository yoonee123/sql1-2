select s.stdName �̸�, addr ����, c.clubName ���Ƹ��̸�, roomNo �����ȣ
from stdTbl s join stdclubTbl sc
on s.stdName = sc.stdName
join clubTbl c
on sc.clubName = c.clubName

select s.stdName �̸�, addr ����, c.clubName ���Ƹ��̸�, roomNo �����ȣ
from stdTbl s left outer join stdclubTbl sc
on s.stdName = sc.stdName
left outer join clubTbl c
on sc.clubName = c.clubName



select * from stdtbl
select * from stdclubtbl
select * from clubtbl