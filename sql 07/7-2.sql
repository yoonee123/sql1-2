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