-- 상품 테이블의 종류에서 위에 해당하는 항목들만 입력되도록 제약을 부여하시오.

create table 상품
(상품코드 char(3),
상품명 char(20),
종류 char(20) check(종류 in('코트','점퍼','자켓','스커트','셔츠')),
색상 char(10),
단가 int,
입고일자 datetime)  

exec sp_helpconstraint 상품

-- 상품코드에 제약명을 'pf_상품코드'로 만들고 제약을 부여하시오.

alter table 상품
alter column 상품코드 char(3) not null

alter table 상품
add constraint pf_상품코드 primary key (상품코드)

drop table 상품

-- 주문테이블을 생성하고 상품코드를 외래키를 통해 참조하시오.
-- 단, 상품코드가 수정되거나 삭제될때도 업데이트되도록 바꾸시오.

create table 주문
(주문코드 int identity primary key,
아이디 char(10),
상품코드 char(3) foreign key references 
상품(상품코드) on update cascade on delete cascade,
수량 int)  

exec sp_helpconstraint 주문

drop table 주문