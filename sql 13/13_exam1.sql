-- ������̺��� ����� �Ʒ� �׸���� ������ �ۼ��Ͻÿ�.

create table #���
(�����ȣ int primary key,
�̸� char(10),
�ּ� varchar(100) constraint df_addr default '��Ÿ',
������ char(2) check(������ in('A','B','O','AB')))

exec sp_helpconstraint #��� -- ������̺� �ɸ� �������� ��ȸ

-- ������̺� 'df_addr' ������� �����Ͻÿ�.

alter table #���
drop constraint df_addr

drop table #���
