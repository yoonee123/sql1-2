create table 회원
(아이디 int identity(100,1), 이름 char(10) not null, 
직업 char(20) not null, 주소 varchar(100), 키 int, 내외국인구분 char(1) default '0' not null)

insert into 회원(이름,주소,직업,키) values('이승기','학생','서울',182)
insert into 회원 values('헨리','연예인','서울',176,'1')

select * from 회원

