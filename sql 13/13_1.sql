select * into #��ǰ from ��ǰ
select * into #�Ǹ� from �Ǹ�

create table #�ӽ�(��ǰ��ȣ int not null)

insert into #�ӽ� values(3), (5), (6)

select * from #�ӽ�

-- �ӽ����̺��� 3, 5, 6 ��ǰ��ȣ�� ������ 10�ۼ�Ʈ �λ�

update #��ǰ
set ���� = ����*1.1
where ��ǰ��ȣ in(select * from #�ӽ�)

-- �Ǹŷ��� 20�� �̻��� ��ǰ�� ������ 10�ۼ�Ʈ ����

update #��ǰ
set ���� = ����*0.9
where ��ǰ��ȣ in(select ��ǰ��ȣ from #�Ǹ� group by ��ǰ��ȣ having sum(�Ǹż���)>=20)

-- �ݹ��� �Ǹż����� +1

update #�Ǹ�
set �Ǹż��� = �Ǹż���+1
from #�Ǹ� join #��ǰ
on #�Ǹ�.��ǰ��ȣ = #��ǰ.��ǰ��ȣ
where ��ǰ�� = '�ݹ���'

-- �Ǹż����� 10���� ���� ���� 3���� �Ǹż��� 5�� �߰�

update top(3) #�Ǹ�
set �Ǹż��� = �Ǹż��� + 5
where �Ǹż��� < 10

select * from #��ǰ
select * from #�Ǹ�

drop table #��ǰ