create table #emp_c
(emp_no varchar(15) constraint e_id unique, 
emp_name varchar(30), 
tel_no varchar(20))

insert into #emp_c values ('em000','아이유','010-000-3333')
insert into #emp_c values ('em000','잔나비','010-111-2222')

alter table #emp_c
drop constraint e_id

create table #emp_t
(emp_no varchar(15) unique, 
emp_name varchar(30), 
tel_no varchar(20))

insert into #emp_t values ('em000','아이유','010-000-3333')
insert into #emp_t values ('em000','잔나비','010-111-2222')

alter table #emp_t
drop constraint UQ__#emp_t____129850FB8D6E2B0B -- 유니크의 이름이 없을때 복사로 입력

exec sp_helpconstraint #emp_c -- tempdb에서만 실행 가능
exec sp_helpconstraint #emp_t

drop table #emp_c
drop table #emp_t
