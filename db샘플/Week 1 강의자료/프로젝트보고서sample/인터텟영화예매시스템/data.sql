/* �帣 */
INSERT INTO genre VALUES (1,'�׼�');
INSERT INTO genre VALUES (2,'����');
INSERT INTO genre VALUES (3,'SF');
INSERT INTO genre VALUES (4,'������');
INSERT INTO genre VALUES (5,'����');
INSERT INTO genre VALUES (6,'����');
INSERT INTO genre VALUES (7,'�ִϸ��̼�');
INSERT INTO genre VALUES (8,'�ڹ̵�');
INSERT INTO genre VALUES (9,'�θǽ�');
INSERT INTO genre VALUES (10,'���');
INSERT INTO genre VALUES (11,'����');
INSERT INTO genre VALUES (12,'��ť���͸�');

/* ��� */
INSERT INTO grade VALUES ('A','��ü������');
INSERT INTO grade VALUES ('B','12�� �̻� ������');
INSERT INTO grade VALUES ('C','15�� �̻� ������');
INSERT INTO grade VALUES ('D','18�� �̻� ������');

/* ��ȭ */
INSERT INTO movie VALUES (10001,'6���� �ϱ�',105,'C','�Ӱ��','������,������,������',4,'���̾� �߻��ϴ� ���λ�� �׸��� ���ϳ��� �ܼ�...','2005-11-25');
INSERT INTO movie VALUES (10002,'�׸�����',118,'C','�׸� �渮��','�� ���̸�,���� ����,���ī ����ġ',1,'���� �׸�����, ������ ��, �����ٵ��� ����� ã�� �����µ�...','2005-11-25');
INSERT INTO movie VALUES (10003,'������ ���� ����',104,'C','������','������,���±�,�̿��,�����',9,'������ ����, ������ ���, ������ �ɸ��� �˼� �ִ� ��ȭ...','2005-11-24');
INSERT INTO movie VALUES (10004,'��',104,'D','�ȵ巹�� �ٸ��ں��','Į �츣��,����� ����,�λ繮�� ����ũ',6,'2026�� �̱� �׹ٴ� �� �縷���� ����Ž�縦 ���̴µ�...','2005-11-23');
INSERT INTO movie VALUES (10005,'������',104,'B','�迵��','�̼���,������,������',2,'���� �ְ��� ���ڹ���, ������ ������ ���ڸ� ���϶�...','2005-11-25');

/* �󿵰� */
INSERT INTO hall VALUES (2001,200,'Y');
INSERT INTO hall VALUES (2002,300,'Y');
INSERT INTO hall VALUES (2003,250,'N');
INSERT INTO hall VALUES (2004,150,'N');
INSERT INTO hall VALUES (2005,350,'Y');

/* �� */
INSERT INTO custom VALUES ('���絿','750210-1122455','011-222-3333',NULL);
INSERT INTO custom VALUES ('���缮','731220-1023451','011-322-7373',NULL);

/* ȸ�� */
INSERT INTO member VALUES ('hong','ȫ����','850210-2122455','016-111-3123','Y',2000);
INSERT INTO member VALUES ('kim','�����','711201-1121459','019-222-1121','Y',2000);
INSERT INTO member VALUES ('mun','���ٿ�','870210-2123450','010-333-7766','N',NULL);

/* ���� */
INSERT INTO payment VALUES (301,'C','Y',11223311,6000,'���絿','750210-1122455','011-222-3333','2005-11-23');
INSERT INTO payment VALUES (302,'P','Y',21273310,5000,'ȫ����','850210-2122455','016-111-3123','2005-11-21');
INSERT INTO payment VALUES (303,'O','N',31223815,4000,'���缮','731220-1023451','011-322-7373',NULL);

/* ������å */
INSERT INTO pricelist VALUES (11,'����ī��',7000,2000);
INSERT INTO pricelist VALUES (12,'ȸ������',7000,1000);
INSERT INTO pricelist VALUES (13,'��������',7000,3000);
INSERT INTO pricelist VALUES (14,'���/����������',7000,3000);

/* ������ */
INSERT INTO schedule VALUES (90001,10001,2003,'2005-11-25',2,'11:30');
INSERT INTO schedule VALUES (90002,10005,2004,'2005-11-25',5,'17:00');

/* �¼� */
INSERT INTO seat VALUES (110001,2003,'Y');
INSERT INTO seat VALUES (110002,2003,'N');
INSERT INTO seat VALUES (110004,2004,'Y');
INSERT INTO seat VALUES (110005,2004,'N');

/* Ƽ�� */
INSERT INTO ticket VALUES (5100011,90001,2003,110002,301,'Y',7000,6000);
INSERT INTO ticket VALUES (5100012,90002,2004,110005,302,'N',7000,5000);