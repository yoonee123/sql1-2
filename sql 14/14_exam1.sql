select * into #제품트랜 from 제품

-- 제품번호가 11인 제품의 가격을 10000으로 수정

begin tran -- 트랜지션을 시작해 롤백혹은 커밋 실행 가능
update #제품트랜
set 가격 = 10000
where 제품번호 = 11

-- 제품번호가 12인 제품의 색상을 WHITE로 수정

update #제품트랜
set 색상 = 'WHITE'
where 제품번호 = 12

-- 제품 테이블의 반바지 항목 삭제

delete from #제품트랜 
where 제품명 = '반바지'

-- 모든 명령 취소

rollback

-- 작업에 오류가 없으면 commit으로 테이블에 반영

commit

select * from #제품트랜
select * from 제품

drop table #제품트랜