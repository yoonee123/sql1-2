-- 예제 1번

create view 책_출판사view
as select title, pub_name
from titles t join publishers p
on t.pub_id = p.pub_id

select * from 책_출판사view

exec sp_helptext 책_출판사view

-- 예제 2번

create view 책평균
as select type as 책분야, AVG(price) 평균가격
from titles group by type

select * from 책평균

-- 예제 3번

create table 책2
(책코드 varchar(6),
책이름 varchar(80),
분야 char(12),
가격 money)

insert into 책2
select title_id, title, type, price
from titles

create view 책가격제한view
as select 책코드, 책이름, 가격
from 책2
where 가격 >= 15
with check option

select * from 책가격제한view

insert into 책가격제한view values('K12345', '컴퓨터', 15)

update 책가격제한view
set 가격 = 10
where 책코드 = 'K12345'

select * from titles
select * from publishers