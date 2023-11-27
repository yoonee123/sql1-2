select * into #제품 from 제품
select * into #판매 from 판매

create table #임시(제품번호 int not null)

insert into #임시 values(3), (5), (6)

select * from #임시

-- 임시테이블의 3, 5, 6 제품번호의 가격을 10퍼센트 인상

update #제품
set 가격 = 가격*1.1
where 제품번호 in(select * from #임시)

-- 판매량이 20개 이상인 제품의 가격을 10퍼센트 인하

update #제품
set 가격 = 가격*0.9
where 제품번호 in(select 제품번호 from #판매 group by 제품번호 having sum(판매수량)>=20)

-- 반바지 판매수량에 +1

update #판매
set 판매수량 = 판매수량+1
from #판매 join #제품
on #판매.제품번호 = #제품.제품번호
where 제품명 = '반바지'

-- 판매수량이 10보다 작은 상위 3개에 판매수량 5개 추가

update top(3) #판매
set 판매수량 = 판매수량 + 5
where 판매수량 < 10

select * from #제품
select * from #판매

drop table #제품