CREATE TABLE Subscribers(user_id VARCHAR(10), firstname VARCHAR(30) NOT NULL, lastname VARCHAR(30) NOT NULL, email VARCHAR(30), dob DATE, inserted_at DATE DEFAULT SYSDATE, PRIMARY KEY(user_id));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U1','Jackie','Jones','jack_killer@gmail.com',TO_DATE('1983-02-28','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U2','Jessie','Jackson','Hello_macy@yahoo.com',TO_DATE('1986-03-04','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U3','Tommy','Trojan','john_black@hotmail.com',TO_DATE('1990-04-22','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U4','Niki','Nanjan','ny_robert@usc.edu',TO_DATE('1980-06-10','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U5','Jalli','Shadan','cool_andrew@bbc.co.uk',TO_DATE('1984-11-27','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U6','Houton','Khandan','coryphillip@voa.gov',TO_DATE('1966-06-06','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U7','Naz','Nazi','DaneilJ@msnbc.com',TO_DATE('2000-04-20','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U8','Ab','Bazi','rohanau@cs.mit.edu',TO_DATE('1956-12-12','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U9','Ben','Ghazi','edmorales@houti.com',TO_DATE('1973-11-10','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U10','Carlos','Santana','danamoon@louti.com',TO_DATE('1977-07-07','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U11','Roberto','Carlos','owner1@villa.com',TO_DATE('1955-05-05','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U12','De','Vilardo','owner2@villa.com',TO_DATE('1944-04-04','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U13','Villa','Blanka','owner3@villa.com',TO_DATE('1974-11-11','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U14','nino','bino','ceo@villa.com',TO_DATE('1991-01-01','YYYY-MM-DD'));
INSERT INTO Subscribers(user_id,firstname,lastname,email,dob) VALUES('U15','Bookish','Morinio','manager2@villa.com', TO_DATE('1950-04-17','YYYY-MM-DD'));
CREATE TABLE Manager(manager_id VARCHAR(10), managed_by VARCHAR(10), inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(manager_id) REFERENCES Subscribers(user_id), FOREIGN KEY(managed_by) REFERENCES Subscribers(user_id), PRIMARY KEY(manager_id));
INSERT INTO Manager(manager_id) VALUES('U14');
INSERT INTO Manager(manager_id,managed_by) VALUES('U15','U14');
CREATE TABLE Owner(owner_id VARCHAR(10) NOT NULL, managed_by VARCHAR(10), contact_no VARCHAR(12) NOT NULL, inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(owner_id) REFERENCES Subscribers(user_id), FOREIGN KEY(managed_by) REFERENCES manager(manager_id),PRIMARY KEY(owner_id));
INSERT INTO Owner(owner_id, contact_no) VALUES('U14','444-444-4444');
INSERT INTO Owner(owner_id, contact_no,managed_by) VALUES('U11','111-111-1111','U15');
INSERT INTO Owner(owner_id, contact_no,managed_by) VALUES('U12','222-222-2222','U15');
INSERT INTO Owner(owner_id, contact_no,managed_by) VALUES('U13','333-333-3333','U15');
CREATE TABLE Villas(villa_id VARCHAR(10), name VARCHAR(30) NOT NULL, inserted_at DATE DEFAULT SYSDATE, PRIMARY KEY(villa_id));
INSERT INTO Villas(villa_id,name) VALUES('Vil1', 'Fifi');
INSERT INTO Villas(villa_id,name) VALUES('Vil2', 'Lulu');
INSERT INTO Villas(villa_id,name) VALUES('Vil3', 'Penny');
INSERT INTO Villas(villa_id,name) VALUES('Vil4', 'Kiki');
INSERT INTO Villas(villa_id,name) VALUES('Vil5', 'Vivi');
INSERT INTO Villas(villa_id,name) VALUES('Vil6', 'Gigi');
INSERT INTO Villas(villa_id,name) VALUES('Vil7', 'Kitty');
INSERT INTO Villas(villa_id,name) VALUES('Vil8', 'Ellie');
INSERT INTO Villas(villa_id,name) VALUES('Vil9', 'Ali');
INSERT INTO Villas(villa_id,name) VALUES('Vil10', 'Kelley');
INSERT INTO Villas(villa_id,name) VALUES('Vil11', 'Doori');
INSERT INTO Villas(villa_id,name) VALUES('Vil12', 'Houti');
CREATE TABLE Features(feature_id VARCHAR(10), name VARCHAR(30) NOT NULL, inserted_at DATE DEFAULT SYSDATE, PRIMARY KEY(feature_id));
INSERT INTO Features(feature_id,name) VALUES('Fea1','Swimming Pool');
INSERT INTO Features(feature_id,name) VALUES('Fea2','Jacuzzi');
INSERT INTO Features(feature_id,name) VALUES('Fea3','Billiard Table');
INSERT INTO Features(feature_id,name) VALUES('Fea4','Xbox 360');
INSERT INTO Features(feature_id,name) VALUES('Fea5','Board Games');
INSERT INTO Features(feature_id,name) VALUES('Fea6','Pets allowed');
CREATE TABLE Villa_Features(villa_id VARCHAR(10), feature_id VARCHAR(10), inserted_at DATE DEFAULT ADD_MONTHS(SYSDATE, 12), FOREIGN KEY(villa_id) REFERENCES Villas(villa_id), FOREIGN KEY(feature_id) REFERENCES Features(feature_id), PRIMARY KEY(villa_id, feature_id));
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil1', 'Fea1');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil1', 'Fea2');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil2', 'Fea1');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil3', 'Fea1');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil3', 'Fea4');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil3', 'Fea5');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil4', 'Fea2');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil5', 'Fea4');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil6', 'Fea6');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil7', 'Fea3');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil7', 'Fea4');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil7', 'Fea5');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil7', 'Fea6');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil8', 'Fea6');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil9', 'Fea5');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil10', 'Fea5');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil11', 'Fea2');
INSERT INTO Villa_Features(villa_id,feature_id) VALUES('Vil12', 'Fea2');
CREATE TABLE Villa_Owners(villa_id VARCHAR(10), owner_id VARCHAR(10), end_date DATE DEFAULT ADD_MONTHS(SYSDATE,12), inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(villa_id) REFERENCES Villas(villa_id), FOREIGN KEY(owner_id) REFERENCES Owner(owner_id), PRIMARY KEY(villa_id, owner_id, end_date));
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil1', 'U11');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil2', 'U12');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil3', 'U13');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil4', 'U11');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil5', 'U11');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil6', 'U11');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil7', 'U12');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil8', 'U13');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil9', 'U14');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil10', 'U12');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil11', 'U12');
INSERT INTO Villa_Owners(villa_id, owner_id) VALUES('Vil12', 'U13');
CREATE TABLE Coupon(coupon_id VARCHAR(10), villa_id VARCHAR(10) NOT NULL, start_date DATE NOT NULL, end_date DATE NOT NULL, discount_percent NUMBER(3) NOT NULL, inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(villa_id) REFERENCES Villas(villa_id), PRIMARY KEY(coupon_id));
INSERT INTO Coupon(coupon_id, villa_id, start_date, end_date, discount_percent) VALUES('Coup1','Vil1',TO_DATE('09-01-2013','MM-DD-YYYY'), TO_DATE('01-31-2014','MM-DD-YYYY'), 20);
INSERT INTO Coupon(coupon_id, villa_id, start_date, end_date, discount_percent) VALUES('Coup2','Vil2',TO_DATE('09-01-2013','MM-DD-YYYY'), TO_DATE('12-31-2013','MM-DD-YYYY'), 15);
INSERT INTO Coupon(coupon_id, villa_id, start_date, end_date, discount_percent) VALUES('Coup3','Vil3',TO_DATE('09-01-2013','MM-DD-YYYY'), TO_DATE('12-31-2013','MM-DD-YYYY'), '25');
INSERT INTO Coupon(coupon_id, villa_id, start_date, end_date, discount_percent) VALUES('Coup4','Vil4',TO_DATE('09-01-2013','MM-DD-YYYY'), TO_DATE('12-31-2013','MM-DD-YYYY'), '10');
INSERT INTO Coupon(coupon_id, villa_id, start_date, end_date, discount_percent) VALUES('Coup5','Vil1',TO_DATE('01-01-2014','MM-DD-YYYY'), TO_DATE('08-31-2014','MM-DD-YYYY'), '15');
CREATE SEQUENCE Res_Seq START WITH 1 NOCACHE;
CREATE TABLE Reservation(reservation_id INT, user_id VARCHAR(10) NOT NULL, villa_id VARCHAR(10) NOT NULL, start_date DATE NOT NULL, end_date DATE NOT NULL, coupon_id VARCHAR(10), deposit NUMBER(10) NOT NULL, inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(user_id) REFERENCES Subscribers(user_id), FOREIGN KEY(villa_id) REFERENCES Villas(villa_id), FOREIGN KEY(coupon_id) REFERENCES Coupon(coupon_id), PRIMARY KEY(reservation_id));
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U1', 'Vil1', TO_DATE('01-02-2013','MM-DD-YYYY'), TO_DATE('01-04-2013', 'MM-DD-YYYY'),NULL,50);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U7', 'Vil2', TO_DATE('01-05-2013','MM-DD-YYYY'), TO_DATE('01-06-2013', 'MM-DD-YYYY'),NULL,30);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U2', 'Vil3', TO_DATE('02-03-2013','MM-DD-YYYY'), TO_DATE('02-07-2013', 'MM-DD-YYYY'),NULL,60);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil4', TO_DATE('02-04-2013','MM-DD-YYYY'), TO_DATE('02-05-2013', 'MM-DD-YYYY'),NULL,39);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil5', TO_DATE('03-06-2013','MM-DD-YYYY'), TO_DATE('03-12-2013', 'MM-DD-YYYY'),NULL,40);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil6', TO_DATE('04-23-2013','MM-DD-YYYY'), TO_DATE('04-25-2013', 'MM-DD-YYYY'),NULL,42);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U6', 'Vil7', TO_DATE('05-29-2013','MM-DD-YYYY'), TO_DATE('06-01-2013', 'MM-DD-YYYY'),NULL,60);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U10', 'Vil8', TO_DATE('07-30-2013','MM-DD-YYYY'), TO_DATE('08-02-2013', 'MM-DD-YYYY'),NULL,100);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U3', 'Vil9', TO_DATE('08-11-2013','MM-DD-YYYY'), TO_DATE('08-12-2013', 'MM-DD-YYYY'),NULL,24);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U2', 'Vil10', TO_DATE('08-19-2013','MM-DD-YYYY'), TO_DATE('08-21-2013', 'MM-DD-YYYY'),NULL,75);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil11', TO_DATE('08-15-2013','MM-DD-YYYY'), TO_DATE('08-17-2013', 'MM-DD-YYYY'),NULL,51);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U6', 'Vil2', TO_DATE('08-27-2013','MM-DD-YYYY'), TO_DATE('08-28-2013', 'MM-DD-YYYY'),NULL,33);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U2', 'Vil1', TO_DATE('09-01-2013','MM-DD-YYYY'), TO_DATE('09-03-2013', 'MM-DD-YYYY'),NULL,40);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil2', TO_DATE('09-02-2013','MM-DD-YYYY'), TO_DATE('09-03-2013', 'MM-DD-YYYY'),NULL,25);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil3', TO_DATE('09-15-2013','MM-DD-YYYY'), TO_DATE('09-20-2013', 'MM-DD-YYYY'),'Coup3',36);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil4', TO_DATE('10-01-2013','MM-DD-YYYY'), TO_DATE('10-03-2013', 'MM-DD-YYYY'),'Coup4',27);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil5', TO_DATE('10-15-2013','MM-DD-YYYY'), TO_DATE('10-16-2013', 'MM-DD-YYYY'),NULL,24);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil6', TO_DATE('11-02-2013','MM-DD-YYYY'), TO_DATE('11-04-2013', 'MM-DD-YYYY'),NULL,30);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U10', 'Vil7', TO_DATE('11-06-2013','MM-DD-YYYY'), TO_DATE('11-07-2013', 'MM-DD-YYYY'),NULL,50);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil8', TO_DATE('11-06-2013','MM-DD-YYYY'), TO_DATE('11-10-2013', 'MM-DD-YYYY'),NULL,60);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil9', TO_DATE('11-10-2013','MM-DD-YYYY'), TO_DATE('11-13-2013', 'MM-DD-YYYY'),NULL,15);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil10', TO_DATE('11-11-2013','MM-DD-YYYY'), TO_DATE('11-13-2013', 'MM-DD-YYYY'),NULL,60);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U6', 'Vil1', TO_DATE('12-01-2013','MM-DD-YYYY'), TO_DATE('12-04-2013', 'MM-DD-YYYY'),NULL,40);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil12', TO_DATE('12-23-2013','MM-DD-YYYY'), TO_DATE('12-26-2013', 'MM-DD-YYYY'),NULL,30);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U7', 'Vil1', TO_DATE('01-12-2014','MM-DD-YYYY'), TO_DATE('01-15-2014', 'MM-DD-YYYY'),'Coup1',48);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil2', TO_DATE('01-06-2014','MM-DD-YYYY'), TO_DATE('01-07-2014', 'MM-DD-YYYY'),'Coup2',34);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U6', 'Vil2', TO_DATE('02-05-2014','MM-DD-YYYY'), TO_DATE('02-09-2014', 'MM-DD-YYYY'),NULL,40);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil5', TO_DATE('02-09-2014','MM-DD-YYYY'), TO_DATE('02-15-2014', 'MM-DD-YYYY'),NULL,50);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil8', TO_DATE('03-18-2014','MM-DD-YYYY'), TO_DATE('03-19-2014', 'MM-DD-YYYY'),NULL,120);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U2', 'Vil4', TO_DATE('04-27-2014','MM-DD-YYYY'), TO_DATE('04-30-2014', 'MM-DD-YYYY'),NULL,50);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U4', 'Vil10', TO_DATE('05-29-2014','MM-DD-YYYY'), TO_DATE('06-01-2014', 'MM-DD-YYYY'),NULL,96);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil12', TO_DATE('07-28-2014','MM-DD-YYYY'), TO_DATE('08-02-2014', 'MM-DD-YYYY'),NULL,42);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil7', TO_DATE('08-11-2014','MM-DD-YYYY'), TO_DATE('08-12-2014', 'MM-DD-YYYY'),NULL,75);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U7', 'Vil4', TO_DATE('08-15-2014','MM-DD-YYYY'), TO_DATE('08-21-2014', 'MM-DD-YYYY'),NULL,50);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U8', 'Vil8', TO_DATE('08-13-2014','MM-DD-YYYY'), TO_DATE('08-17-2014', 'MM-DD-YYYY'),NULL,120);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U3', 'Vil2', TO_DATE('08-27-2014','MM-DD-YYYY'), TO_DATE('08-28-2014', 'MM-DD-YYYY'),NULL,40);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U2', 'Vil11', TO_DATE('06-20-2014','MM-DD-YYYY'), TO_DATE('06-23-2014', 'MM-DD-YYYY'),NULL,70);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U1', 'Vil2', TO_DATE('08-28-2014','MM-DD-YYYY'), TO_DATE('08-30-2014', 'MM-DD-YYYY'),NULL,40);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil1', TO_DATE('04-10-2014','MM-DD-YYYY'), TO_DATE('04-15-2014', 'MM-DD-YYYY'),NULL,60);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U9', 'Vil7', TO_DATE('02-05-2014','MM-DD-YYYY'), TO_DATE('02-09-2014', 'MM-DD-YYYY'),NULL,75);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U8', 'Vil7', TO_DATE('02-09-2014','MM-DD-YYYY'), TO_DATE('02-15-2014', 'MM-DD-YYYY'),NULL,75);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U5', 'Vil7', TO_DATE('03-18-2014','MM-DD-YYYY'), TO_DATE('03-19-2014', 'MM-DD-YYYY'),NULL,75);
INSERT INTO Reservation(reservation_id, user_id, villa_id, start_date, end_date, coupon_id, deposit) VALUES(Res_Seq.NEXTVAL, 'U6', 'Vil1', TO_DATE('05-12-2014','MM-DD-YYYY'), TO_DATE('05-13-2014', 'MM-DD-YYYY'),'Coup5',51);
CREATE TABLE Rate(rate_id VARCHAR(10), villa_id VARCHAR(10) NOT NULL, start_date DATE DEFAULT SYSDATE, end_date DATE DEFAULT SYSDATE, rate NUMBER(10) NOT NULL, inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(villa_id) REFERENCES Villas(villa_id),PRIMARY KEY(rate_id));
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat1','Vil1',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),150);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat2','Vil2',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),100);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat3','Vil3',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),200);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat4','Vil4',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),130);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat5','Vil5',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),120);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat6','Vil6',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),140);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat7','Vil7',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),180);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat8','Vil8',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),300);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat9','Vil9',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),80);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat10','Vil10',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),250);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat11','Vil11',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),170);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat12','Vil12',TO_DATE('01-01-2013','MM-DD-YYYY'),TO_DATE('08-31-2013','MM-DD-YYYY'),110);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat13','Vil1',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),120);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat14','Vil2',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),75);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat15','Vil3',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),160);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat16','Vil4',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),90);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat17','Vil5',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),80);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat18','Vil6',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),100);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat19','Vil7',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),150);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat20','Vil8',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),200);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat21','Vil9',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),50);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat22','Vil10',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),200);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat23','Vil1',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),120);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat24','Vil2',TO_DATE('09-01-2013','MM-DD-YYYY'),TO_DATE('12-31-2013','MM-DD-YYYY'),90);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat25','Vil1',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),180);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat26','Vil2',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),120);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat27','Vil3',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),240);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat28','Vil4',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),150);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat29','Vil5',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),150);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat30','Vil6',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),180);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat31','Vil7',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),250);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat32','Vil8',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),400);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat33','Vil9',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),110);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat34','Vil10',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),320);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat35','Vil11',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),210);
INSERT INTO RATE(rate_id, villa_id, start_date,end_date,rate) VALUES('Rat36','Vil12',TO_DATE('01-01-2014','MM-DD-YYYY'),TO_DATE('08-31-2014','MM-DD-YYYY'),140);                                            
CREATE TABLE Review(review_id VARCHAR(10), user_id VARCHAR(10) NOT NULL, villa_id VARCHAR(10) NOT NULL, text VARCHAR(500) NOT NULL, rating NUMBER(2) NOT NULL, inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(villa_id) REFERENCES Villas(villa_id), FOREIGN KEY(user_id) REFERENCES Subscribers(user_id), PRIMARY KEY(review_id));
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev1', 'U1', 'Vil1', 'Poor maintainance considering the price.', 2);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev2', 'U2', 'Vil3', 'Boring and Dull', 1);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev3', 'U4', 'Vil6', 'Love it!', 4);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev4', 'U2', 'Vil1', 'Best villa error', 2);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev5', 'U7', 'Vil1', 'Though not clean, has fantastic scenery around it', 3);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev6', 'U5', 'Vil2', 'not recommended', 1);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev7', 'U6', 'Vil1', 'Good one', 4);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev8', 'U4', 'Vil4', 'I gonna rent again and again', 5);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev9', 'U9', 'Vil3', 'Good work', 5);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev10', 'U3', 'Vil9', 'A must visit villa', 5);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev11', 'U10', 'Vil8', 'Nice', 1);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev13', 'U6', 'Vil7', 'poor one', 1);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev14', 'U1', 'Vil7', 'popular one', 4);
INSERT INTO Review(review_id, user_id, villa_id, text, rating) VALUES('Rev15', 'U7', 'Vil3', 'wanna go back!', 5);
CREATE TABLE Review_Likes(review_id VARCHAR(10), user_id VARCHAR(10), inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(review_id) REFERENCES Review(review_id), FOREIGN KEY(user_id) REFERENCES Subscribers(user_id), PRIMARY KEY(review_id, user_id));
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev1','U4');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev1','U2');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev1','U3');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev2','U7');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev2','U4');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev3','U8');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev4','U9');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev5','U2');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev5','U4');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev14','U2');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev14','U4');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev14','U6');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev15','U3');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev15','U6');
INSERT INTO Review_Likes(review_id, user_id) VALUES('Rev15','U7');
CREATE TABLE User_Favourite_Villas(user_id VARCHAR(10), villa_id VARCHAR(10), inserted_at DATE DEFAULT SYSDATE, FOREIGN KEY(user_id) REFERENCES Subscribers(user_id), FOREIGN KEY(villa_id) REFERENCES Villas(villa_id), PRIMARY KEY(user_id, villa_id));
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U1','Vil2');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U1','Vil4');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U2','Vil8');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U3','Vil10');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U3','Vil3');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U3','Vil7');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U4','Vil10');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U4','Vil4');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U5','Vil1');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U6','Vil3');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U7','Vil2');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U7','Vil4');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U7','Vil12');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U8','Vil1');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U8','Vil9');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U9','Vil6');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U10','Vil11');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U10','Vil12');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U13','Vil1');
INSERT INTO user_favourite_villas(user_id, villa_id) VALUES('U14','Vil2')
/