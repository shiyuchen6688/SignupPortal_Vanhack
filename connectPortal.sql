DROP DATABASE IF EXISTS connect_portal;
CREATE DATABASE connect_portal;
USE connect_portal;

DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS program;
DROP TABLE IF EXISTS enroll;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS ManageProgram;
DROP TABLE IF EXISTS ManageStudent;
DROP TABLE IF EXISTS TourGroup;


CREATE TABLE student (
	sid int PRIMARY KEY,
	FirstName varchar(255),
	LastName varchar(255),
	Phone int
);

CREATE TABLE program (
	pid int PRIMARY KEY,
	faculty varchar(255),
	capacity int
);

CREATE TABLE enroll (
	sid int PRIMARY KEY,
	pid int,
	FOREIGN KEY (sid) REFERENCES student(sid),
	FOREIGN KEY (pid) REFERENCES program(pid)
);

CREATE TABLE employee (
	eid int PRIMARY KEY,
	FirstName varchar(255),
	LastName varchar(255)
);

CREATE TABLE ManageProgram (
	eid int,
	pid int,
	PRIMARY KEY (eid, pid),
	FOREIGN KEY (eid) REFERENCES employee(eid),
	FOREIGN KEY (pid) REFERENCES program(pid)
);

CREATE TABLE ManageStudent (
	eid int,
	sid int PRIMARY KEY,
	FOREIGN KEY (eid) REFERENCES employee(eid),
	FOREIGN KEY (sid) REFERENCES student(sid)
);

CREATE TABLE TourGroup (
	gid int PRIMARY KEY,
	pid int,
	FOREIGN KEY (pid) REFERENCES program(pid)
);


INSERT INTO student VALUES (1, "William", "Smith", "7787627732");
INSERT INTO student VALUES (2, "Anne", "Wilson", "6047589673");
INSERT INTO student VALUES (3, "James", "Anderson", "6048278472");
INSERT INTO student VALUES (4, "David", "Lopez", "7788258562");
INSERT INTO student VALUES (5, "Kayle", "Lee", "7785370722");
INSERT INTO student VALUES (6, "Tom", "Williams", "2369211273");
INSERT INTO student VALUES (7, "Steven", "Williams", "2360319347");
INSERT INTO student VALUES (8, "Robert", "Fortin", "2508214521");
INSERT INTO student VALUES (9, "Patricia", "Walker", "5197678090");
INSERT INTO student VALUES (10, "Elizabeth", "Hamilton", "2262615872");


INSERT INTO employee VALUES(1, "Joseph", "Moore");
INSERT INTO employee VALUES(2, "Dave", "Rodriguez");
INSERT INTO employee VALUES(3, "David", "Bowie");
INSERT INTO employee VALUES(4, "Mary", "Harris");
INSERT INTO employee VALUES(5, "Mel", "Clark");
INSERT INTO employee VALUES(6, "Barbara", "Mitchell");
INSERT INTO employee VALUES(7, "John", "Bouchard");
INSERT INTO employee VALUES(8, "Richard", "Campbell");
INSERT INTO employee VALUES(9, "Jennifer", "Bennett");
INSERT INTO employee VALUES(10, "Joseph", "Green");

INSERT INTO program VALUES(1, "Chemistry", "20");
INSERT INTO program VALUES(2, "Biology", "50");
INSERT INTO program VALUES(3, "Physics", "30");
INSERT INTO program VALUES(4, "Earth Science", "10");

INSERT INTO ManageStudent VALUES(1,1);
INSERT INTO ManageStudent VALUES(3,2);
INSERT INTO ManageStudent VALUES(4,3);
INSERT INTO ManageStudent VALUES(2,5);
INSERT INTO ManageStudent VALUES(6,7);