select ��������, ������
from ��������
where ���� = (select top(1) �й�
					from �л���
				order by ���� desc) -- ������ ���� ���� �л��� ������ ���������� ID�� ������

select * from ��������
select * from �л���

select ��ǰ��ȣ, ��ǰ��
from ��ǰ
where ��ǰ��ȣ in (select ��ǰ��ȣ from �Ǹ� 
							where �Ǹż��� >= 10) -- �Ǹż����� 10�̻��� ��ǰ�� ��ȣ�� ��ǰ���� ���

select * from ��ǰ
select * from �Ǹ�

