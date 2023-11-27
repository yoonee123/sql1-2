create table 상품
(상품코드 char(3),
상품명 char(20),
종류 char(20) check(종류 in('코트','점퍼','자켓','스커트','셔츠')),
색상 char(10),
단가 int,
입고일자 datetime)  

alter table 상품
alter column 상품코드 char(3) not null

alter table 상품
add constraint pf_상품코드 primary key (상품코드)

insert into 상품 values('M1','롱코트','코트','블랙',150000,'20000110')
insert into 상품 values('M2','하프코트','코트','카멜',150000,'20050205')
insert into 상품 values('M3','짚업점퍼','점퍼','브라운',150000,'20050711')
insert into 상품 values('M4','후드점퍼','점퍼','카키',150000,'20061126')
insert into 상품 values('M5','가죽자켓','자켓','블랙',150000,'20051205')
insert into 상품 values('M6','주름스커트','스커트','흰색',150000,'20060310')
insert into 상품 values('M7','옥스퍼드셔츠','셔츠','흰색',150000,'20060322')

select * from 상품

drop table 상품

create table 주문
(주문코드 int identity primary key,
아이디 char(10),
상품코드 char(3) foreign key references 상품(상품코드) 
on update cascade on delete cascade,
수량 int)  

INSERT INTO 주문 VALUES('fly123','m1',2)
INSERT INTO 주문 VALUES('beauty1','m3',3)
INSERT INTO 주문 VALUES('cool333','m2',1)
INSERT INTO 주문 VALUES('dry77','m7',2)
INSERT INTO 주문 VALUES('bear1004','m6',2)

-- 상품코드 m0을 m1으로 수정

update 상품 
set 상품코드 = 'M0' 
where 상품코드 = 'M1'

-- 상품코드가 m7인 값을 삭제

delete from 상품
where 상품코드 = 'M7'

-- 주문코드 5인 상품코드를 m2. 수량을 10으로 수정

update 주문
set 상품코드 = 'm2', 수량 = 10
where 주문코드 = 5

select * from 주문

drop table 주문