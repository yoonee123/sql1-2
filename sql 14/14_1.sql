-- 뷰 만들기 (편의성, 보안)

create view titles_view
as select title,type,price 
from titles

select * from titles_view

drop view titles_view

-- titles_copy를 생성하고 뷰로 가격이 15달러 이상인 항목을 생성하시오.

select * into titles_copy
from titles

create view titles_copy_view
as select title_id, type, price
from titles_copy
where price >= 15.00

-- 책 가격을 10달러로 수정

update titles_copy_view
set price = 10
where title_id = 'BU1032' -- 책 가격이 10달러이므로 조건에 맞지않아 없어짐

-- with check option

alter view titles_copy_view
as select title_id, type, price
from titles_copy
where price >= 15.00
with check option -- 조건에 맞지 않으면 update가 되지 않도록 막음

-- 책 가격을 10달러로 수정 (에러)

update titles_copy_view
set price = 10
where title_id = 'BU7832'

select * from titles_copy_view

-- 뷰에 대한 정보 확인

exec sp_help 

-- 뷰가 어떻게 만들어지는지 보는 방법

exec sp_helptext titles_view




