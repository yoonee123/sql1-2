-- 서점별 가장 많이 팔린 책 정보 출력

-- 1-1) 서점아이디, 책아이디, 수량 (sales 사용)
select s1.stor_id as 서점아이디, s1.title_id as 책아이디, s1.qty as 수량
from sales s1
where s1.qty = (select max(qty) from sales s2 where s1.stor_id = s2.stor_id)

-- 1-2) 서점이름, 책아이디, 수량 (sales, stores 사용)
select stor_name as 서점이름, s1.title_id as 책아이디, s1.qty as 수량
from sales s1 join stores s2
on s1.stor_id = s2.stor_id
where s1.qty = (select max(qty) from sales s2 where s1.stor_id = s2.stor_id)
order by stor_name 

select * from sales
select * from stores
select * from titles

-- sampleDB

-- 판매량이 10개 이상인 제품의 번호, 제품명 출력 (EXISTS 사용)
-- exists는 반환하는 행의 데이터 존재가 확인되면 더 이상 찾지않음 (속도가 빠름)
select 제.제품번호, 제품명
from 제품 제 join 판매 판
on 제.제품번호 = 판.제품번호
where exists (select 1 from 판매 판 where 제.제품번호 = 판. 제품번호 and 판.판매수량 >= 10)

select * from 제품
select * from 판매

