create table #점수
(std_no varchar(15),
subject_id varchar(30),
jumsu int,
grade char(1) check(grade in('A','B','C','D','E','F')))

insert into #점수 values('qwe','qwe',3,'G')

alter table #점수
add primary key(std_no) -- 반드시 속성이 not null 이어야만 함
 
alter table #점수
alter column std_no varchar(15) not null -- 자료형을 not null로 변경해 기본키(primary key) 추가 가능

-- alter table #점수
-- add check (grade in('A','B','C','D','E','F')) add로 check를 넣는 방법

drop table #점수
