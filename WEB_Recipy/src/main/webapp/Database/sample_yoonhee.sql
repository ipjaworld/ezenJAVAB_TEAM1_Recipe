-- ������ �ڵ� ����
create sequence recipe_seq increment by 1 start with 1;

-- ������ ������ �߰�
alter table recipe add thumbnail varchar2(100) not null;

-- �⺻ Ʋ
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '����', '����', �ҿ�ð�, ����(��ȣ), '����� ���');
insert into processImg(rnum, links, description, iseq) values ( rnum, '���', '�丮 ���� ����', 1);

-- 221228 ���� ���� ����
insert into ingredient(iseq, iname, quantity) values( ���� ��ȣ, '��� �̸�', ��� ��);

-- ������ 1 '��������'
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '��������', '�丮 �ʺ��� ���� �� �� �ִ� �丮 ���̺� ������� �״�θ� �����ϸ� �������� �����',10, 1, 'imageThumb/potatoes thumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/potatoes1.jpg', '���ڴ� ������ ���� ���� ũ��� �� �غ��ؿ�', 1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/potatoes2.jpg', '�ҿ� �Ŀ����� �θ��� ���ڸ� �� 2~3�а� ���ƿ�', 2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/potatoes3.jpg', '���ڰ� ������ ���� 2/3������ �װ� ����,����, ���������� �־� ��10�а� ������. ', 3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/potatoes4.jpg', '���� ���� ���⸧, ������ �־� ������ �ϼ��ؿ�', 4);
-- ��ῡ ���� ���� ������ ����
-- ���� 4������, ���� 1������, ���� 2������, ���� ���� 1/2������, ���� 1/2������, ���⸧ 1������

-- ������ 2 '���߸�������'
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '���߸�������' '����� �˹�� ���߸� ���� ���� ������̶� �븩�ϰ� �����Ծ��~ ������ �޴��� ���� ������ �䵵���� ���� ����ϴ�!',20,2, 'imageThumb/cabbage rolls thumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage rolls1.jpg','��⿡ ���� ������ �������� �÷� �� 3~5�� ���',1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage rolls2.jpg','����, ȫ����, û����� ���� �����Ḧ ��� �ְ� ���´�',2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage rolls4.jpg','�� �������� ���� �����ش�',3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage rolls5.jpg','�ҿ� �⸧�� ��¦ �θ��� ���� �� ���߸� �븩�ϰ� ������.',4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/cabbage rolls6.jpg','����� ���� ���� �Ѹ��� ���� �� ������.',5);
-- ���: �˹����� 1/2��, �Ŀ��� �ణ
-- ȫ���� 1/2��, û����� 1��, ���� 1/2��, �������� 1������, ���� 2������, ���� 1/2������, �� 2������, ���⸧ 1������, ��� 1������


-- ������ 3 '�ް�������'
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '�ް�������', '��� �������� ��ƴٰ� �����ǽŴٸ� �ް� ������ ���� ��������! �丰�̵��� ������ ���Ĵ��� �˷��ִ� �ް� ������ �������Դϴ�. �� �Ѱ��� �ҵ�! �ϴ� ��������� ��������~',30,3, 'imageThumb/cabbage rolls thumb.png');
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/eggs in soy broth1.png','�ް��� ���� ��� �ް��� ��� ������ ���� �ְ� ���ʿ� �ұ��� �־� �� 14�а� ��ƿ�',1);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/eggs in soy broth2.png','�ް��� �ʹ� ���� �ʸ�����, û����ߴ� �Ա� ���� ����',2);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/eggs in soy broth3.png','�ް��� ������ ���� �غ��ؿ�',3);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/eggs in soy broth4.png','���� ��, ����, ����, �ް�, ������ �־��. ��������� �ٽø��� �ʸ�����, û����߸� �־� �����ּ���',4);
insert into processImg(rnum, links, description, iseq) values( rnum, '/imageRecipe/eggs in soy broth5.png','��������� ���� ���� �ϼ��ؿ�',5);
-- ���
-- �ް� 7��, û����� 2��, �ʸ����� 10��, �븶�� 5��, ���� 1/2������, �� 2������, ���� 1/3������, �ٽø�, ���� 1������, �ұ� 1/5������

-- ������ 4 '�¹���'
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '�¹���', '�������� ���� ���� ��� ������ �ù����� ���ٸ� ������ ������ �¸� �����ϰ� �����ִ� �¹��� ��������! �ʱ�~�˵��� ���丮���� �������� ��ģ��ġ�� ���� ������ ������ �ξ��ָ� �����ϰ� ����� �ѱ׸� ������ �ϼ��ſ�~',20,4, 'imageThumb/wram muk rice thumb.jpg');
insert into processImg(rnum, links, description, iseq) values( rnum,'/imageRecipe/wram muk rice1.jpg','���Ĵ� �ۼ� ��� ���丮���� ��� ���',1);
insert into processImg(rnum, links, description, iseq) values( rnum,'/imageRecipe/wram muk rice2.jpg','�߰� �� ��ġ�� ��� ��Ḧ �ְ� ���´�',2);
insert into processImg(rnum, links, description, iseq) values( rnum,'/imageRecipe/wram muk rice3.jpg','���� ��ġ�ٽø������� ���ε� �������� �ִ´�',3);
insert into processImg(rnum, links, description, iseq) values( rnum,'/imageRecipe/wram muk rice4.jpg','�׸��� ��, ���丮��, ��ġ, ����, �谡�縦 �÷� �ϼ��Ѵ�',4);
-- ��� 
-- ���丮�� 1��, ���� 1��, ��ġ 1������, ������ 1/2������, �谡�� �ణ, ���� 1/2������, ���⸧ 1/2������, ���ұ� �ణ
-- ��ġ 1/2��, �ٽø� 2��, �� 5������




