-- 사원테이블을 만들고 아래 항목들을 유의해 작성하시오.

create table #사원
(사원번호 int primary key,
이름 char(10),
주소 varchar(100) constraint df_addr default '기타',
혈액형 char(2) check(혈액형 in('A','B','O','AB')))

exec sp_helpconstraint #사원 -- 사원테이블에 걸린 제약조건 조회

-- 사원테이블에 'df_addr' 제약명을 삭제하시오.

alter table #사원
drop constraint df_addr

drop table #사원
