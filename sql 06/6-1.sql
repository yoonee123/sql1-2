--1, 2번
select top (6) with ties title_id, qty from sales order by qty desc 
--3, 4번
select --distinct type 책분야 
* from titles
where type is not null
--5번
select title + '('+ title_id+ ')' '책이름(책코드)' , price 
from titles