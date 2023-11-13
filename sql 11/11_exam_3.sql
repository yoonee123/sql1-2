create table 사원
(사원번호 int not null, 이름 char(10) not null, 입사일 date)

alter table 사원
add 전화번호 char(10)

alter table 사원
alter column 이름 char(20)

alter table 사원
drop column 전화번호

select * from 사원

drop table 사원

