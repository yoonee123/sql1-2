-- ��ǰ ���̺� ������� �̷���� �並 �����Ͻÿ�

create view ��ǰ_view1
as select ��ǰ��ȣ, ��ǰ��, ����
from ��ǰ

select * from ��ǰ_view1

-- ��ǰ ���̺� ������� ������ ��հ����� ���Ͻÿ�.

create view ��ǰ��հ���
as select ����, AVG(����) ��հ���
from ��ǰ group by ����

select * from ��ǰ��հ���

-- ��ǰ ���̺�� �Ǹ� ���̺��� �����Ͽ� �����Ͻÿ�. (��ǰ��, ����, �Ǹż���)

create view ��ǰ�Ǹ���Ȳ
as select ��ǰ��, ����, �Ǹż���
from ��ǰ �� join �Ǹ� ��
on ��.��ǰ��ȣ = ��.��ǰ��ȣ

-- ������ ���� ������ �Ϸ��� ��� Ʈ������ ������ ���� ������ ��, Ŀ�� Ʈ������ �ϼ�

select * from ��ǰ�Ǹ���Ȳ

-- ���� ���� ��ǰ_view1�� �Ʒ� ���ڵ� ���� �����ÿ�.

insert into ��ǰ_view1 values(13, '���ǽ�', '48000')

-- ��ǰ_view2�� �����ϰ� �Ʒ� ���ڵ� ���� �����ÿ�.

create view ��ǰ_view2
as select ��ǰ��, ���� 
from ��ǰ

insert into ��ǰ_view2 values('����', 30000)

select * from ��ǰ_view2

-- �ʼ� �Է� Į���� ���ǰ� �Ǿ��־���� (null, identity, default���� �Էµ��� �ʾƵ� �Ǵ� �Ӽ�)


-- ��ǰ_view1�� �Ʒ� �������� �����Ͻÿ�

alter view ��ǰ_view1
as select ��ǰ��ȣ, ��ǰ��, ����, ����
from ��ǰ

-- ��ǰ_view1�� �����Ͻÿ�

drop view ��ǰ_view1

-- ����ǰ �並 ����� 5���� �̻��� ��ǰ�� ������� �����Ͻÿ�

create view ����ǰ
as select ��ǰ��, ����
from ��ǰ
where ���� >= 50000

-- with check option���� ����ǰ�� �����Ͻÿ�

alter view ����ǰ
as select ��ǰ��, ����
from ��ǰ
where ���� >= 50000
with check option

-- ����ǰ ���� ������Ʈ ������ 30000���� �����Ͻÿ� (����)

update ����ǰ
set ���� = 30000
where ��ǰ�� = '������Ʈ'

select * from ����ǰ

-- �信�� ����� �� ���� �� - select into, order by




