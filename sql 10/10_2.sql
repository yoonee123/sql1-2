-- in�� �ߺ� �ڵ� ����, join�� �������� ���� (distinct �����ؾ���)

select distinct �й�, �̸�, ��.����
from ��������Ʈ �� join �������� �� 
on ��.���� = ��.����
where �����ڵ� = 'D02'

select s1.���̸�, s1.�̸�, s1.����
from �л��� s1
where s1.���� = (select max(����) from �л��� s2
				where s2.���̸� = s1.���̸�)

select s1.���̸�, s1.�̸�, s1.���� from �л��� s1
where s1.���� in (select max(����) 
	 				from �л��� 
				group by ���̸�)


