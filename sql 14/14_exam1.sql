select * into #��ǰƮ�� from ��ǰ

-- ��ǰ��ȣ�� 11�� ��ǰ�� ������ 10000���� ����

begin tran -- Ʈ�������� ������ �ѹ�Ȥ�� Ŀ�� ���� ����
update #��ǰƮ��
set ���� = 10000
where ��ǰ��ȣ = 11

-- ��ǰ��ȣ�� 12�� ��ǰ�� ������ WHITE�� ����

update #��ǰƮ��
set ���� = 'WHITE'
where ��ǰ��ȣ = 12

-- ��ǰ ���̺��� �ݹ��� �׸� ����

delete from #��ǰƮ�� 
where ��ǰ�� = '�ݹ���'

-- ��� ��� ���

rollback

-- �۾��� ������ ������ commit���� ���̺� �ݿ�

commit

select * from #��ǰƮ��
select * from ��ǰ

drop table #��ǰƮ��