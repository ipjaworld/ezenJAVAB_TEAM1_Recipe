-- �⺻ Ʋ
insert into recipe(rnum, id, subject, content, time, type, thumbnail) 
values(recipe_seq.nextVal, 'scott', '����', '����', �ҿ�ð�, ����(��ȣ), '����� ���');
insert into processImg values( rnum, '���', '�丮 ���� ����', 1);
insert into ingredient(iseq, iname, quantity) values( ���� ��ȣ, '��� �̸�', ��� ��);


--1
insert into recipe(rnum, id, subject, content, time, type,thumbnail) 
values(recipe_seq.nextVal,'scott','���ö��� ���� �� ���� �����ʹ� ������ ����','�޴��ϸ鼭 ¬©�� ����Ʈ ���ö� �޴�!� ��Ḧ �߰��ص� ���ִ� �����ʹ�
�� ���ְ� ��� �� �ִ� Ư���� �����Ǹ� �Ұ��ҰԿ�~',10,1,'/imageThumb/thumb1.jpg');

insert into processImg(iseq, link, description, rnum) values (1,'/imageRecipe/p1_1.jpg','�õ� (or ����)�߰������� ��Ƽ� �����ش�',rnum)
insert into processImg(iseq, link, description, rnum) values (2,'/imageRecipe/p1_2.jpg','�κθ� ���� ���ļ�',rnum)
insert into processImg(iseq, link, description, rnum) values (3,'/imageRecipe/p1_3.jpg','��������/ �� �κζ� �߰������� ���̵��� �����ּ���',rnum)
insert into processImg(iseq, link, description, rnum) values (4,'/imageRecipe/p1_4.jpg','�ٽ� �������ݴϴ�',rnum)
insert into processImg(iseq, link, description, rnum) values (5,'/imageRecipe/p1_5.jpg','�ϼ�!',rnum)
--�߰����� 300g, �κ� 1/2��, ���� 1��(2~3�ο�), �ұ� 1t, ���� 1/2t

--2
insert into recipe(rnum, id, subject, content, time, type,thumbnail) 
values(recipe_seq.nextVal,'scott','������ �����簡 ���� ���! �ʸ����ߴߺ���','������ ���� ������ �������� �����Ǹ�
������ ��Ÿ�Ϸ� �����ϰ� ���� �ߺ���! �ߺ��������� ����⵵ ����,��§��§ ��䵵 �� ����־ ��������ε� �ʹ� ���ƿ� :)',5,1,'/imageThumb/thumb2.jpg');

insert into processImg(iseq, link, description, rnum) values (1,'/imageRecipe/p2_1.jpg','�ҿ� �⸧�� �θ��� ���� ������ ���� �ۼ� �� ���ĸ� �ְ� �Բ� ���´�.',rnum)
insert into processImg(iseq, link, description, rnum) values (2,'/imageRecipe/p2_2.jpg','����� �ڸ��� ����� ������ �ְ� ���´�.',rnum)
insert into processImg(iseq, link, description, rnum) values (3,'/imageRecipe/p2_3.jpg','��, ���������� �ְ� ������ ������ ������ ���δ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (4,'/imageRecipe/p2_4.jpg','�ʸ����߸� �ְ� ������ ���� �� ���� ����.',rnum)
insert into processImg(iseq, link, description, rnum) values (5,'/imageRecipe/p2_5.jpg','�ϼ�!',rnum)
--�ߺ������� �� 1kg, �ʸ����� 150g, ���� 1/2��, �� 2������, ���� 1/4������, ���� 2������, �������� 1������, ���� �ణ, ��� �ణ, �Ŀ��� ���緮

--3
insert into recipe(rnum, id, subject, content, time, type,thumbnail) 
values(recipe_seq.nextVal,'scott','�ٸ� ���� �ʿ� ����! �����Ǳ��� �������� �ٽø�����','�۳� �̸� ���� �����Ǳ��忡�� �Ұ��� �ٽø�����!
���� ���� �Ը� ���� �� �ٽø������� Ź! �信 ����~ �� ������ �� �׸� �ҵ� ���� �ٸ� ������ �ʿ� �����~',5,1,'/imageThumb/thumb3.jpg');

insert into processImg(iseq, link, description, rnum) values (1,'/imageRecipe/p3_1.jpg','�� �ٽø��� ������ �� 10�� �̻� �㰡 �ұݱ⸦ ���� �ٽø�, ����, ��ȣ��, û����ߴ� ������ ���Ĵ� �ۼ� ��� �غ��ؿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (2,'/imageRecipe/p3_2.jpg','������ �ҿ� �⸧�� �θ��� �ٽø��� ���� ä�Ҹ� �־� ���ƿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (3,'/imageRecipe/p3_3.jpg','��ᰡ �������� ���尡��, ����, ���� ����, ȫ���߸� �־� ���ƿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (4,'/imageRecipe/p3_4.jpg','�緡�� ����, �������� �־� ���ƿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (5,'/imageRecipe/p3_5.jpg','�ϼ�!',rnum)
--�� �ٽø� 140g, ��ȣ�� 1/4��, ���� 1/2��, ���� 1/2��, û����� 1��, ȫ���� 1��, ���尡�� 1/2������, ���� 1/2������, ���� ���� 1������, 
--�緡�� ���� 4������, ������ 1������, ���⸧ 1������


--3
insert into recipe(rnum, id, subject, content, time, type,thumbnail) 
values(recipe_seq.nextVal,'scott','�ٸ� ���� �ʿ� ����! �����Ǳ��� �������� �ٽø�����','�۳� �̸� ���� �����Ǳ��忡�� �Ұ��� �ٽø�����!
���� ���� �Ը� ���� �� �ٽø������� Ź! �信 ����~ �� ������ �� �׸� �ҵ� ���� �ٸ� ������ �ʿ� �����~',15,1,'/imageThumb/thumb3.jpg');

insert into processImg(iseq, link, description, rnum) values (1,'/imageRecipe/p3_1.jpg','�� �ٽø��� ������ �� 10�� �̻� �㰡 �ұݱ⸦ ���� �ٽø�, ����, ��ȣ��, û����ߴ� ������ ���Ĵ� �ۼ� ��� �غ��ؿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (2,'/imageRecipe/p3_2.jpg','������ �ҿ� �⸧�� �θ��� �ٽø��� ���� ä�Ҹ� �־� ���ƿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (3,'/imageRecipe/p3_3.jpg','��ᰡ �������� ���尡��, ����, ���� ����, ȫ���߸� �־� ���ƿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (4,'/imageRecipe/p3_4.jpg','�緡�� ����, �������� �־� ���ƿ�.',rnum)
insert into processImg(iseq, link, description, rnum) values (5,'/imageRecipe/p3_5.jpg','�ϼ�!',rnum)
--�� �ٽø� 140g, ��ȣ�� 1/4��, ���� 1/2��, ���� 1/2��, û����� 1��, ȫ���� 1��, ���尡�� 1/2������, ���� 1/2������, ���� ���� 1������, 
--�緡�� ���� 4������, ������ 1������, ���⸧ 1������

--4
insert into recipe(rnum, id, subject, content, time, type,thumbnail) 
values(recipe_seq.nextVal,'scott','�ᱹ���� �ȴٸ� �㱹��','�ÿ��� ���������丮! �ᱹ���� ��񸰳� ������ �Ⱦ��ϴ� �е鵵 ����?!
���� ���� ����� ���������, �񸰳��� Nope ���� �i�� �ÿ��� �������� ����� �ÿ��� ���� ��������!',20,1,'/imageThumb/thumb4.jpg');

insert into processImg(iseq, link, description, rnum) values (1,'/imageRecipe/p4_1.jpg','���̴� ä ���.',rnum)
insert into processImg(iseq, link, description, rnum) values (2,'/imageRecipe/p4_2.jpg','�ͼ��� ��, �� ����, �ұ��� �ְ� ���� �� �� ü�� ������.',rnum)
insert into processImg(iseq, link, description, rnum) values (3,'/imageRecipe/p4_3.jpg','���� ���� �ұ��� �ְ� �Ҹ��� �־� ��´�..',rnum)
insert into processImg(iseq, link, description, rnum) values (4,'/imageRecipe/p4_4.jpg','�׸��� ���� �Ҹ��� ��� �� ������ �˳��� ���� �� ä �� ���̸� �÷� �ϼ��Ѵ�.',rnum)
--�� 150g, �� ���� 2+1/2������, �Ҹ� 1�κ�, ���� 1/3��, �ұ� �ణ


--3
insert into recipe(rnum, id, subject, content, time, type,thumbnail) 
values(recipe_seq.nextVal,'scott','�ᱹ���� �ȴٸ� �㱹��','�ÿ��� ���������丮! �ᱹ���� ��񸰳� ������ �Ⱦ��ϴ� �е鵵 ����?!
���� ���� ����� ���������, �񸰳��� Nope ���� �i�� �ÿ��� �������� ����� �ÿ��� ���� ��������!',20,1,'/imageThumb/thumb4.jpg');

insert into processImg(iseq, link, description, rnum) values (1,'/imageRecipe/p4_1.jpg','���̴� ä ���.',rnum)
insert into processImg(iseq, link, description, rnum) values (2,'/imageRecipe/p4_2.jpg','�ͼ��� ��, �� ����, �ұ��� �ְ� ���� �� �� ü�� ������.',rnum)
insert into processImg(iseq, link, description, rnum) values (3,'/imageRecipe/p4_3.jpg','���� ���� �ұ��� �ְ� �Ҹ��� �־� ��´�..',rnum)
insert into processImg(iseq, link, description, rnum) values (4,'/imageRecipe/p4_4.jpg','�׸��� ���� �Ҹ��� ��� �� ������ �˳��� ���� �� ä �� ���̸� �÷� �ϼ��Ѵ�.',rnum)
--�� 150g, �� ���� 2+1/2������, �Ҹ� 1�κ�, ���� 1/3��, �ұ� �ణ.















insert into ingredient(rnum, iname, quantity) values(rnum, '�߰�����', '300g');
insert into ingredient(rnum, iname, quantity) values(rnum, '�κ�', '1/2��');
insert into ingredient(rnum, iname, quantity) values(rnum, '����', '1��(2~3�ο�)');
insert into ingredient(rnum, iname, quantity) values(rnum, '�ұ�', '1t');
insert into ingredient(rnum, iname, quantity) values(rnum, '����', '1/2t');
