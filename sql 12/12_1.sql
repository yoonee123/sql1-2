create table #member1
(ÁÖ¹Î¹øÈ£ char(14) constraint u_id unique,
ÀÌ¸§ varchar(30))

insert into #member1 values ('920101-1233445','È«±æµ¿')
insert into #member1 values ('920101-1233445','±è¼±´Ş')

select * from #member1

create table #member2
(ÁÖ¹Î¹øÈ£ char(14),
ÀÌ¸§ varchar(30), unique(ÁÖ¹Î¹øÈ£))

insert into #member2 values ('920101-1233445','È«±æµ¿')
insert into #member2 values ('920101-1233445','±è¼±´Ş')

drop table #member1