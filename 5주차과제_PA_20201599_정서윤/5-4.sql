select ��, ����, AVG(����) as �������
from ����
--group by ��, ���� with rollup
group by cube(��, ����)	