create table 물품
(물품코드 int not null,
	물품형 char(10) null)

select * from 물품

select * into #성적1 -- 지역 테이블 (새 쿼리에 출력 되지 않음)
from 성적

select * from #성적1

select 학번, 이름, 점수 into #성적2
from 성적
where 점수 >= 80

select * into ##성적2 -- 전역 테이블 (새 쿼리에 출력 가능)
from #성적2

select * from ##성적2

-- DDL - CREATE, ALTER, DROP
-- DML - SELECT(C), DELETE(D), UPDATE(U), INSERT(R) : CRUD
-- DCL - 







