/* 장르 */
INSERT INTO genre VALUES (1,'액션');
INSERT INTO genre VALUES (2,'무협');
INSERT INTO genre VALUES (3,'SF');
INSERT INTO genre VALUES (4,'스릴러');
INSERT INTO genre VALUES (5,'전쟁');
INSERT INTO genre VALUES (6,'공포');
INSERT INTO genre VALUES (7,'애니메이션');
INSERT INTO genre VALUES (8,'코미디');
INSERT INTO genre VALUES (9,'로맨스');
INSERT INTO genre VALUES (10,'드라마');
INSERT INTO genre VALUES (11,'에로');
INSERT INTO genre VALUES (12,'다큐멘터리');

/* 등급 */
INSERT INTO grade VALUES ('A','전체관람가');
INSERT INTO grade VALUES ('B','12세 이상 관람가');
INSERT INTO grade VALUES ('C','15세 이상 관람가');
INSERT INTO grade VALUES ('D','18세 이상 관람가');

/* 영화 */
INSERT INTO movie VALUES (10001,'6월의 일기',105,'C','임경수','신은경,김윤진,문정혁',4,'연이어 발생하는 살인사건 그리고 단하나의 단서...','2005-11-25');
INSERT INTO movie VALUES (10002,'그림형제',118,'C','테리 길리엄','맷 데이먼,히스 레져,모니카 벨루치',1,'사기꾼 그림형제, 마법의 숲, 마르바덴의 비밀을 찾아 떠나는데...','2005-11-25');
INSERT INTO movie VALUES (10003,'광식이 동생 광태',104,'C','김현식','김주혁,봉태규,이요원,김아중',9,'광식의 진심, 광태의 흑심, 남자의 심리를 알수 있는 영화...','2005-11-24');
INSERT INTO movie VALUES (10004,'둠',104,'D','안드레이 바르코비악','칼 우르번,드웨인 존슨,로사문드 파이크',6,'2026년 미국 네바다 주 사막에서 유적탐사를 벌이는데...','2005-11-23');
INSERT INTO movie VALUES (10005,'무영검',104,'B','김영준','이서진,신현준,윤소이',2,'발해 최고의 여자무사, 마지막 발해의 왕자를 구하라...','2005-11-25');

/* 상영관 */
INSERT INTO hall VALUES (2001,200,'Y');
INSERT INTO hall VALUES (2002,300,'Y');
INSERT INTO hall VALUES (2003,250,'N');
INSERT INTO hall VALUES (2004,150,'N');
INSERT INTO hall VALUES (2005,350,'Y');

/* 고객 */
INSERT INTO custom VALUES ('김재동','750210-1122455','011-222-3333',NULL);
INSERT INTO custom VALUES ('유재석','731220-1023451','011-322-7373',NULL);

/* 회원 */
INSERT INTO member VALUES ('hong','홍수아','850210-2122455','016-111-3123','Y',2000);
INSERT INTO member VALUES ('kim','김민종','711201-1121459','019-222-1121','Y',2000);
INSERT INTO member VALUES ('mun','문근영','870210-2123450','010-333-7766','N',NULL);

/* 결제 */
INSERT INTO payment VALUES (301,'C','Y',11223311,6000,'김재동','750210-1122455','011-222-3333','2005-11-23');
INSERT INTO payment VALUES (302,'P','Y',21273310,5000,'홍수아','850210-2122455','016-111-3123','2005-11-21');
INSERT INTO payment VALUES (303,'O','N',31223815,4000,'유재석','731220-1023451','011-322-7373',NULL);

/* 가격정책 */
INSERT INTO pricelist VALUES (11,'할인카드',7000,2000);
INSERT INTO pricelist VALUES (12,'회원할인',7000,1000);
INSERT INTO pricelist VALUES (13,'조조할인',7000,3000);
INSERT INTO pricelist VALUES (14,'경로/국가유공자',7000,3000);

/* 상영일정 */
INSERT INTO schedule VALUES (90001,10001,2003,'2005-11-25',2,'11:30');
INSERT INTO schedule VALUES (90002,10005,2004,'2005-11-25',5,'17:00');

/* 좌석 */
INSERT INTO seat VALUES (110001,2003,'Y');
INSERT INTO seat VALUES (110002,2003,'N');
INSERT INTO seat VALUES (110004,2004,'Y');
INSERT INTO seat VALUES (110005,2004,'N');

/* 티켓 */
INSERT INTO ticket VALUES (5100011,90001,2003,110002,301,'Y',7000,6000);
INSERT INTO ticket VALUES (5100012,90002,2004,110005,302,'N',7000,5000);