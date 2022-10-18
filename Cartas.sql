CREATE TABLE USER
	(password 		VARCHAR(9),
	name 		VARCHAR(100),
	CONSTRAINT pk_usuario PRIMARY KEY (password)
	
	);

CREATE TABLE CATEGORY
	( nameCategory 		VARCHAR(100),
	CONSTRAINT pk_usuario PRIMARY KEY (nameCategory)
	
	);
	
CREATE TABLE CARD
	(nameCategory 		VARCHAR(9),
	code		INT(10) AUTO_INCREMENT,
	name 		VARCHAR(100),
	price		DOUBLE(10,2),
	acquisition date,
	deck_cards		boolean,
	CONSTRAINT pk_historial PRIMARY KEY(code),
	CONSTRAINT fk_historial FOREIGN KEY (nameCategory) REFERENCES CATEGORY(nameCategory) ON UPDATE CASCADE
	);
	
INSERT INTO USER
VALUES('usuario','usuario');

INSERT INTO CATEGORY
VALUES('Combate');

INSERT INTO CATEGORY
VALUES('Distancia');

INSERT INTO CATEGORY
VALUES('Asedio');

insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Gigi', 81, '2018-06-25', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Kit', 43, '2021-03-22', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Enrika', 54, '2019-10-16', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Genia', 52, '2020-01-26', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Sheena', 96, '2018-09-30', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Brooke', 62, '2022-06-21', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Tessi', 54, '2021-10-03', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','King', 88, '2019-03-17', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Rosanna', 22, '2018-12-05', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Kerrill', 62, '2020-09-25', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Phillipe', 7, '2018-12-08', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Clerc', 5, '2019-02-15', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Carin', 98, '2022-03-01', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Rasla', 2, '2018-06-21', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Lamar', 85, '2018-08-10', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Clotilda', 62, '2018-08-28', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Alla', 19, '2020-11-08', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Teena', 47, '2020-09-18', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Elsey', 96, '2021-11-04', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Odell', 66, '2021-06-03', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Booth', 16, '2021-07-30', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Odo', 53, '2018-05-17', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Jenny', 72, '2021-10-28', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Florrie', 13, '2018-10-26', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Curran', 39, '2022-01-26', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Cleveland', 70, '2020-03-07', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Ansell', 90, '2018-09-01', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Romain', 69, '2020-02-12', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Barby', 2, '2021-01-14', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Sena', 18, '2022-03-17', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Jerrie', 84, '2022-10-07', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Ulrikaumeko', 37, '2019-09-29', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Franz', 15, '2022-06-10', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Pammy', 69, '2022-05-22', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Malchy', 69, '2022-07-10', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Goldy', 8, '2019-07-27', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Teddie', 58, '2021-01-16', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Di', 27, '2022-01-24', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Agata', 85, '2020-08-30', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Reggie', 29, '2021-02-03', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Marge', 6, '2022-04-10', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Sena', 97, '2020-07-25', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Katherina', 43, '2021-05-13', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Ruperta', 67, '2018-05-21', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Combate','Reeva', 61, '2021-08-25', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Tomi', 78, '2021-10-09', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Martguerita', 58, '2019-01-10', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Kelsy', 13, '2020-09-15', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Marcellus', 67, '2020-10-08', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Margaretta', 56, '2019-02-19', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Claudina', 22, '2018-10-05', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Kylen', 47, '2019-07-15', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Zechariah', 63, '2022-03-10', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Adda', 57, '2020-12-03', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Marcile', 23, '2021-08-14', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Jourdan', 31, '2018-10-19', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Maryanna', 94, '2020-08-30', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Domini', 28, '2020-01-31', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Sarina', 90, '2020-03-01', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Ikey', 16, '2021-12-13', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Fiann', 25, '2020-04-02', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Ali', 66, '2019-07-03', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Othello', 95, '2022-01-17', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Annamarie', 10, '2021-05-06', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Joe', 22, '2019-04-23', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Chevy', 58, '2019-04-26', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Kennie', 34, '2021-08-01', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Jamie', 94, '2019-04-24', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Joannes', 69, '2018-08-22', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Link', 47, '2022-09-26', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Larina', 15, '2020-04-08', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Alaric', 92, '2021-02-23', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Park', 96, '2019-11-15', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Othilie', 37, '2018-10-03', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Bernard', 16, '2019-05-17', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Glenden', 3, '2019-10-16', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Christie', 44, '2018-10-09', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Kerry', 11, '2021-08-22', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Alphard', 33, '2022-03-28', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Anya', 56, '2019-04-30', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Ethyl', 17, '2019-06-07', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Dukey', 15, '2022-04-30', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Aida', 3, '2021-07-26', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Lars', 1, '2020-12-01', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Brendan', 94, '2022-09-03', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Clay', 53, '2020-12-27', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Bessie', 53, '2021-08-30', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Trstram', 81, '2020-05-27', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Lil', 100, '2020-09-15', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Franchot', 90, '2020-03-28', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Oswald', 28, '2021-10-03', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Distancia','Petronia', 95, '2021-09-28', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Darin', 12, '2020-12-17', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Jabez', 38, '2019-12-05', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Barbara-anne', 21, '2019-10-05', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Rebecka', 79, '2022-09-20', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Ax', 60, '2019-02-04', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Donny', 69, '2020-03-10', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Gloriana', 66, '2020-10-02', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Caressa', 52, '2022-01-28', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Adolf', 95, '2020-07-18', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Annalise', 12, '2018-09-16', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Moise', 40, '2020-06-28', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Delbert', 71, '2021-12-24', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Illa', 10, '2019-07-11', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Kacy', 27, '2019-04-05', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Irene', 53, '2019-04-02', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Gracie', 90, '2020-02-04', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Thornton', 98, '2021-09-07', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Hailee', 48, '2020-11-07', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Lauraine', 83, '2018-05-13', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Mallissa', 9, '2021-06-17', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Lauritz', 89, '2018-12-15', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Tonya', 51, '2022-08-03', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Jamal', 10, '2021-10-29', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Jsandye', 37, '2021-06-27', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Sadella', 25, '2020-03-23', true);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Logan', 31, '2019-04-27', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Reade', 1, '2021-09-27', false);
insert into CARD (nameCategory,name, price, acquisition, deck_cards) values ('Asedio','Elvina', 4, '2018-06-16', true);