-- 제품 테이블 기반으로 이루어진 뷰를 생성하시오

create view 제품_view1
as select 제품번호, 제품명, 가격
from 제품

select * from 제품_view1

-- 제품 테이블 기반으로 종류별 평균가격을 구하시오.

create view 제품평균가격
as select 종류, AVG(가격) 평균가격
from 제품 group by 종류

select * from 제품평균가격

-- 제품 테이블과 판매 테이블을 조인하여 생성하시오. (제품명, 종류, 판매수량)

create view 제품판매현황
as select 제품명, 종류, 판매수량
from 제품 제 join 판매 판
on 제.제품번호 = 판.제품번호

-- 조인한 뷰의 수정을 하려면 비긴 트랜으로 시작해 따로 수정한 후, 커밋 트랜으로 완성

select * from 제품판매현황

-- 위에 만든 제품_view1에 아래 레코드 값을 넣으시오.

insert into 제품_view1 values(13, '원피스', '48000')

-- 제품_view2를 생성하고 아래 레코드 값을 넣으시오.

create view 제품_view2
as select 제품명, 가격 
from 제품

insert into 제품_view2 values('바지', 30000)

select * from 제품_view2

-- 필수 입력 칼럼은 정의가 되어있어야함 (null, identity, default등은 입력되지 않아도 되는 속성)


-- 제품_view1을 아래 구문으로 수정하시오

alter view 제품_view1
as select 제품번호, 제품명, 가격, 색상
from 제품

-- 제품_view1을 삭제하시오

drop view 제품_view1

-- 고가제품 뷰를 만들고 5만원 이상인 제품만 대상으로 생성하시오

create view 고가제품
as select 제품명, 가격
from 제품
where 가격 >= 50000

-- with check option으로 고가제품을 수정하시오

alter view 고가제품
as select 제품명, 가격
from 제품
where 가격 >= 50000
with check option

-- 고가제품 뷰의 하프코트 가격을 30000으로 수정하시오 (에러)

update 고가제품
set 가격 = 30000
where 제품명 = '하프코트'

select * from 고가제품

-- 뷰에서 사용할 수 없는 것 - select into, order by




