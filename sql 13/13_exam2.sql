-- ��ǰ ���̺��� �������� ���� �ش��ϴ� �׸�鸸 �Էµǵ��� ������ �ο��Ͻÿ�.

create table ��ǰ
(��ǰ�ڵ� char(3),
��ǰ�� char(20),
���� char(20) check(���� in('��Ʈ','����','����','��ĿƮ','����')),
���� char(10),
�ܰ� int,
�԰����� datetime)  

exec sp_helpconstraint ��ǰ

-- ��ǰ�ڵ忡 ������� 'pf_��ǰ�ڵ�'�� ����� ������ �ο��Ͻÿ�.

alter table ��ǰ
alter column ��ǰ�ڵ� char(3) not null

alter table ��ǰ
add constraint pf_��ǰ�ڵ� primary key (��ǰ�ڵ�)

drop table ��ǰ

-- �ֹ����̺��� �����ϰ� ��ǰ�ڵ带 �ܷ�Ű�� ���� �����Ͻÿ�.
-- ��, ��ǰ�ڵ尡 �����ǰų� �����ɶ��� ������Ʈ�ǵ��� �ٲٽÿ�.

create table �ֹ�
(�ֹ��ڵ� int identity primary key,
���̵� char(10),
��ǰ�ڵ� char(3) foreign key references 
��ǰ(��ǰ�ڵ�) on update cascade on delete cascade,
���� int)  

exec sp_helpconstraint �ֹ�

drop table �ֹ�