select ������
from ����
where �����ڵ� = (select �����ڵ�
					from ��������
					where ������ = '��ö��') -- 'D02'

select �й�, �̸�, ����
from ����
where ���� >= (select AVG(����)
				from ����)

select �й�, �̸�, ����
from ��������Ʈ 
where ���� in (select ����
				from ��������
				where �����ڵ� = 'D02')

-- ���� �Ʒ��� ����

select �й�, �̸�, ��.����
from ��������Ʈ �� join �������� �� 
on ��.���� = ��.����
where �����ڵ� = 'D02'




