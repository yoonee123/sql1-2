create table #����
(std_no varchar(15),
subject_id varchar(30),
jumsu int,
grade char(1) check(grade in('A','B','C','D','E','F')))

insert into #���� values('qwe','qwe',3,'G')

alter table #����
add primary key(std_no) -- �ݵ�� �Ӽ��� not null �̾�߸� ��
 
alter table #����
alter column std_no varchar(15) not null -- �ڷ����� not null�� ������ �⺻Ű(primary key) �߰� ����

-- alter table #����
-- add check (grade in('A','B','C','D','E','F')) add�� check�� �ִ� ���

drop table #����
