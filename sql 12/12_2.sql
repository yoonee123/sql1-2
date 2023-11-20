create table 부서
(부서코드 char(3) primary key,
부서명 char(10))

insert into 부서 values('D1','총무부'), ('D2','영업부')

select * from 부서

create table 사원
(사원번호 int primary key,
이름 char(10),
부서코드 char(3)
foreign key references 부서(부서코드))

insert into 사원 values (3, '홍길동', 'D3')

drop table 부서

