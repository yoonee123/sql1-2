-- 3-1
select top (1) �̸�, ���� 
from ����
where �̸� like '��%'
-- 3-2
select ��, min(����) as '�ݺ���������'
from ����
group by ��
-- 3-3
select ���̸�, AVG (����) as �������
from �л���
where ���̸� is not null
group by ���̸�
having AVG(����) >= 85

-- 4-1
select ���̸�, avg(����) as �������
from �л���
group by ���̸�
-- 4-2
select ���̸�, avg(����) as �������
from �л���
where ���̸� not in ('�б�¯')
group by ���̸�
-- 4-3
select ���̸�, avg(����) as �������
from �л���
where ���̸� not in ('�б�¯')
group by all ���̸�

-- 5-1 
select ����, avg(����) as ��հ���
from ��ǰ
group by ����

select ����, avg(����) as ��հ���
from ��ǰ
group by ���� with rollup

select * from ��������
select * from ����

select ��������, ������, ��������.�����ڵ�, ������
from �������� inner join ����
on ��������.�����ڵ�=����.�����ڵ�