-- ������ ���� ���� �ȸ� å ���� ���

-- 1-1) �������̵�, å���̵�, ���� (sales ���)
select s1.stor_id as �������̵�, s1.title_id as å���̵�, s1.qty as ����
from sales s1
where s1.qty = (select max(qty) from sales s2 where s1.stor_id = s2.stor_id)

-- 1-2) �����̸�, å���̵�, ���� (sales, stores ���)
select stor_name as �����̸�, s1.title_id as å���̵�, s1.qty as ����
from sales s1 join stores s2
on s1.stor_id = s2.stor_id
where s1.qty = (select max(qty) from sales s2 where s1.stor_id = s2.stor_id)
order by stor_name 

select * from sales
select * from stores
select * from titles

-- sampleDB

-- �Ǹŷ��� 10�� �̻��� ��ǰ�� ��ȣ, ��ǰ�� ��� (EXISTS ���)
-- exists�� ��ȯ�ϴ� ���� ������ ���簡 Ȯ�εǸ� �� �̻� ã������ (�ӵ��� ����)
select ��.��ǰ��ȣ, ��ǰ��
from ��ǰ �� join �Ǹ� ��
on ��.��ǰ��ȣ = ��.��ǰ��ȣ
where exists (select 1 from �Ǹ� �� where ��.��ǰ��ȣ = ��. ��ǰ��ȣ and ��.�Ǹż��� >= 10)

select * from ��ǰ
select * from �Ǹ�

