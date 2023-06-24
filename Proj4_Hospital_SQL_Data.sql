CREATE DATABASE hospital;
USE hospital;

-- Table 1
CREATE TABLE procedures (
  code INT PRIMARY KEY NOT NULL,
  name varchar(100),
  cost float);

-- Table 2
CREATE TABLE room (
  room_id INT PRIMARY KEY NOT NULL,
  nurse_id INT,
  room_type varchar(30),
  floor INT);

-- Table 3
CREATE TABLE appointment (
  apt_id INT PRIMARY KEY NOT NULL,
  patient_id INT NOT NULL,
  doc_id INT,
  start_dt_time DATETIME NOT NULL,
  exam_room char NOT NULL);

-- Table 4
CREATE TABLE patient (
  patient_id INT NOT NULL,
  med_id INT,
  name varchar(50)NOT NULL,
  address varchar(200)NOT NULL,
  phone varchar(15) NOT NULL,
  insurance varchar(20) NOT NULL,
  gender char NOT NULL,
  age INT NOT NULL,
  hospital_stay BOOLEAN,
  room_id INT,
  procedure_id INT);

-- Table 5
CREATE TABLE Medication (
  med_id INT PRIMARY KEY NOT NULL,
  name varchar(50) NOT NULL,
  brand varchar(50) NOT NULL,
  description varchar(300) NOT NULL,
  generic BOOLEAN);

-- Table 6
CREATE TABLE department (
  dept_id INT PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL);

-- Table 7
CREATE TABLE physician (
  doc_id INT PRIMARY KEY NOT NULL,
  dept_id INT,
  name varchar(50) NOT NULL); 

-- Table 8
CREATE TABLE nurse (
  nurse_id INT PRIMARY KEY NOT NULL,
  dept_id INT,
  name varchar(50) NOT NULL);


-- Table 1 Data
INSERT INTO procedures VALUES (1,'MRI',1500.00);
INSERT INTO procedures VALUES (2,'Movement Disorder',3750.00);
INSERT INTO procedures VALUES (3,'X-Ray',4500.00);
INSERT INTO procedures VALUES (4,'Chemo',10000.00);
INSERT INTO procedures VALUES (5,'Radiation',4899.00);
INSERT INTO procedures VALUES (6,'DBS',5600.00);
INSERT INTO procedures VALUES (7,'Follow Up',25.00);
INSERT INTO procedures VALUES (8,'Wellness Check', 500.00);

-- Table 2 Data
INSERT INTO room VALUES (101,201,'Single',1);
INSERT INTO room VALUES (102,201,'Single',1);
INSERT INTO room VALUES (103,201,'Single',1);
INSERT INTO room VALUES (301,202,'Double',3);
INSERT INTO room VALUES (302,202,'Double',3);
INSERT INTO room VALUES (303,202,'Double',3);
INSERT INTO room VALUES (501,203,'Single',5);
INSERT INTO room VALUES (502,203,'Single',5);
INSERT INTO room VALUES (503,203,'Single',5);
INSERT INTO room VALUES (701,204,'Double',7);
INSERT INTO room VALUES (702,204,'Double',7);
INSERT INTO room VALUES (703,204,'Double',7);

-- Table 3 Data
INSERT INTO appointment VALUES (1,11001,1001,'2008-04-24 10:00','A');
INSERT INTO appointment VALUES (2,11002,1002,'2008-04-24 10:00','B');
INSERT INTO appointment VALUES (3,11003,1003,'2008-04-25 10:00','A');
INSERT INTO appointment VALUES (4,11004,1004,'2008-04-25 10:00','B');
INSERT INTO appointment VALUES (5,11005,1004,'2008-04-26 10:00','C');
INSERT INTO appointment VALUES (6,11006,1004,'2008-04-26 11:00','C');
INSERT INTO appointment VALUES (7,11007,1001,'2008-04-26 12:00','C');
INSERT INTO appointment VALUES (8,11008,1002,'2008-04-27 10:00','A');
INSERT INTO appointment VALUES (9,11009,1003,'2008-04-27 10:00','B');
INSERT INTO appointment VALUES (10,11010,1004,'2008-04-27 10:00','B');

-- Table 4 Data
INSERT INTO patient VALUES (11001,441,'John Smith','42 Foobar Lane','555-0256','BCBS','M',45,0,NULL,7);
INSERT INTO patient VALUES (11002,442,'Grace Ritchie','37 Snafu Drive','555-0512','BCBS','F',12,0,NULL,8);
INSERT INTO patient VALUES (11003,443, 'Random J. Patient','101 Omgbbq Street','555-1204','BCBS','M',35,0,NULL,8);
INSERT INTO patient VALUES (11004,444, 'Dennis Doe','1100 Foobaz Avenue','555-2048','Self','M',25,0,NULL,1);
INSERT INTO patient VALUES (11005,444, 'John Johnsone','11 Kukookey Lane','555-2033','BCBS', 'M',50,1,101,6);
INSERT INTO patient VALUES (11006,444, 'Sam Elecsco','221 First Street','555-3333','Self', 'M',16,1,102,4);
INSERT INTO patient VALUES (11007,443, 'Thomas Dickson','3454 Flower Lane','555-3838','Cobra', 'M',45,0,NULL,8);
INSERT INTO patient VALUES (11008,444, 'Sue Wilson','12 Olympia Drive','555-1535','BCBS', 'F',8,0,NULL,7);
INSERT INTO patient VALUES (11009,445, 'Shannon Kansa','320 Jason Circle','555-5977','BCBS', 'F',48,1,303,2);
INSERT INTO patient VALUES (11010,445, 'Sasha Cruise','35 Jordan Lane','555-8858','Cobra', 'F',75,0,NULL,3);

-- Table 5 Data
INSERT INTO medication VALUES(441,'Procrastin-X','X','N/A',0);
INSERT INTO medication VALUES(442,'Thesisin','Foo Labs','N/A',0);
INSERT INTO medication VALUES(443,'Awakin','Bar Laboratories','N/A',0);
INSERT INTO medication VALUES(444,'Crescavitin','Baz Industries','N/A',1);
INSERT INTO medication VALUES(445,'Melioraurin','Snafu Pharma','N/A',1);

-- Table 6 Data
INSERT INTO department VALUES (1,'Internal Medicine');
INSERT INTO department VALUES (2,'Pediatrics');
INSERT INTO department VALUES (3,'Psychiatry');
INSERT INTO department VALUES (4,'Radiology');
INSERT INTO department VALUES (5,'Neurology');
INSERT INTO department VALUES (6,'Oncology');
INSERT INTO department VALUES (7,'Nursing');

-- Table 7 Data
INSERT INTO physician VALUES (1001, 1, 'John Dorian');
INSERT INTO physician VALUES (1002, 2, 'Elliot Reid');
INSERT INTO physician VALUES (1003, 3, 'Christopher Turk');
INSERT INTO physician VALUES (1004, 4, 'Percival Cox');
INSERT INTO physician VALUES (1005, 5, 'Bob Kelso');
INSERT INTO physician VALUES (1006, 6, 'Todd Quinlan');

-- Table 8 Data
INSERT INTO nurse VALUES (201, 7, 'Carla Espinosa');
INSERT INTO nurse VALUES (202, 7, 'Laverne Roberts');
INSERT INTO nurse VALUES (203, 7, 'Paul Flowers');
INSERT INTO nurse VALUES (204, 7, 'Heather Smith');


