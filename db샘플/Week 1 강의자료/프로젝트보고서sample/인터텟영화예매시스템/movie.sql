/*
Created		2005-11-07
Modified		2005-12-01
Project		인터넷 영화예매
Model		Movie Ticketing
Company		목678
Author		황문성
Version		0.9
Database		mySQL 4.0 
*/




drop table IF EXISTS Member;
drop table IF EXISTS Custom;
drop table IF EXISTS Pricelist;
drop table IF EXISTS Grade;
drop table IF EXISTS Genre;
drop table IF EXISTS Payment;
drop table IF EXISTS Ticket;
drop table IF EXISTS Seat;
drop table IF EXISTS Hall;
drop table IF EXISTS Schedule;
drop table IF EXISTS Movie;




Create table Movie (
	movie_no Int NOT NULL,
	movie_name Char(20),
	running_time Int,
	grade Char(1) NOT NULL DEFAULT "A",
	director Char(20),
	actor Char(50),
	genre Int NOT NULL,
	description Char(100),
	movie_open Date,
 Primary Key (movie_no)) TYPE = MyISAM;

Create table Schedule (
	schedule_no Int NOT NULL,
	movie_no Int NOT NULL,
	hall_no Int NOT NULL,
	view_date Date,
	view_round Int,
	view_time Date,
 Primary Key (schedule_no)) TYPE = MyISAM;

Create table Hall (
	hall_no Int NOT NULL,
	number_seat Int,
	usable_hall Char(1) NOT NULL DEFAULT "N",
 Primary Key (hall_no)) TYPE = MyISAM;

Create table Seat (
	seat_no Int NOT NULL,
	hall_no Int NOT NULL,
	usable_seat Char(1) NOT NULL DEFAULT "Y",
 Primary Key (seat_no,hall_no)) TYPE = MyISAM;

Create table Ticket (
	ticket_no Int NOT NULL,
	schedule_no Int NOT NULL,
	hall_no Int NOT NULL,
	seat_no Int NOT NULL,
	payment_no Int NOT NULL,
	issue_state Char(1) NOT NULL DEFAULT "N",
	list_price Int,
	sell_price Int,
 Primary Key (ticket_no)) TYPE = MyISAM;

Create table Payment (
	payment_no Int NOT NULL,
	payment_type Char(1) NOT NULL DEFAULT "C",
	payment_state Char(1) NOT NULL DEFAULT "N",
	permit_no Int,
	payment_price Int,
	custom_name Char(10) NOT NULL,
	person_no Char(15) NOT NULL,
	custom_tel Char(15) NOT NULL,
	payment_date Date,
 Primary Key (payment_no)) TYPE = MyISAM;

Create table Genre (
	genre_no Int NOT NULL,
	genre_name Char(20),
 Primary Key (genre_no)) TYPE = MyISAM;

Create table Grade (
	grade_co Char(1) NOT NULL DEFAULT "A",
	grade_type Char(20),
 Primary Key (grade_co)) TYPE = MyISAM;

Create table Pricelist (
	price_no Int NOT NULL,
	price_type Char(20),
	list_price Int,
	discount Int,
 Primary Key (price_no)) TYPE = MyISAM;

Create table Custom (
	custom_name Char(10) NOT NULL,
	person_no Char(15) NOT NULL,
	custom_tel Char(15) NOT NULL,
	member_id Char(10),
 Primary Key (custom_name,person_no,custom_tel)) TYPE = MyISAM;

Create table Member (
	member_id Char(10) NOT NULL,
	custom_name Char(10) NOT NULL,
	person_no Char(15) NOT NULL,
	custom_tel Char(15) NOT NULL,
	is_member Char(1) NOT NULL DEFAULT "N",
	member_point Int DEFAULT 1000,
 Primary Key (member_id,custom_name,person_no,custom_tel)) TYPE = MyISAM;









Alter table Schedule add Index IX_Relationship3 (movie_no);
Alter table Schedule add Foreign Key (movie_no) references Movie (movie_no) on delete  restrict on update  restrict;
Alter table Ticket add Index IX_Relationship5 (schedule_no);
Alter table Ticket add Foreign Key (schedule_no) references Schedule (schedule_no) on delete  restrict on update  restrict;
Alter table Schedule add Index IX_Relationship4 (hall_no);
Alter table Schedule add Foreign Key (hall_no) references Hall (hall_no) on delete  restrict on update  restrict;
Alter table Seat add Index IX_Relationship6 (hall_no);
Alter table Seat add Foreign Key (hall_no) references Hall (hall_no) on delete  restrict on update  restrict;
Alter table Ticket add Index IX_Relationship7 (seat_no,hall_no);
Alter table Ticket add Foreign Key (seat_no,hall_no) references Seat (seat_no,hall_no) on delete  restrict on update  restrict;
Alter table Ticket add Index IX_Relationship8 (payment_no);
Alter table Ticket add Foreign Key (payment_no) references Payment (payment_no) on delete  restrict on update  restrict;
Alter table Movie add Index IX_Relationship1 (genre);
Alter table Movie add Foreign Key (genre) references Genre (genre_no) on delete  restrict on update  restrict;
Alter table Movie add Index IX_Relationship2 (grade);
Alter table Movie add Foreign Key (grade) references Grade (grade_co) on delete  restrict on update  restrict;
Alter table Payment add Index IX_Relationship9 (custom_name,person_no,custom_tel);
Alter table Payment add Foreign Key (custom_name,person_no,custom_tel) references Custom (custom_name,person_no,custom_tel) on delete  restrict on update  restrict;
Alter table Custom add Index IX_Relationship10 (member_id,custom_name,person_no,custom_tel);
Alter table Custom add Foreign Key (member_id,custom_name,person_no,custom_tel) references Member (member_id,custom_name,person_no,custom_tel) on delete  restrict on update  restrict;



