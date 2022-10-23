Create database university_db;
GO
Use university_db;

CREATE TABLE Login_Role(ID varchar(6) not null,Description varchar(30) not null,PRIMARY KEY (ID));

insert into login_role values
(1,'ADMIN'),
(2,'USER');


CREATE TABLE Permissions1(ID varchar(6) not null,Description varchar(30) not null,PRIMARY KEY (ID));

insert into permissions1 values
(1,'YOU ARE ALLOWED'),
(2,'YOU ARE NOT ALLOWED');


CREATE TABLE Login(ID varchar(6) not null,Username varchar(10) not null,Password varchar(10) not null,Role_ID varchar(6),PRIMARY KEY (ID),FOREIGN KEY (Role_ID) REFERENCES Login_Role(ID));

insert into login values
(2,'RAM','QWERTY',2),
(3,'SHYAM','192JG@',2),
(4,'SITA','SGH@',2);

CREATE TABLE Person_Role(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));

insert into PERSON_ROLE values
(1,'STUDENT'),
(2,'STAFF'),
(3,'PROFESSOR');

CREATE TABLE Person_Status(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));

insert into PERSON_STATUS values
(1,'EXIST'),
(2,'NOT EXIST');

CREATE TABLE College_Address(ID varchar(6) not null,House_No varchar(10) not null,Building_No varchar(10) not null,Street varchar(20) not null,Area varchar(20),City varchar(20) not null,PRIMARY KEY (ID));


insert into COLLEGE_ADDRESS values
(1,'H-22','MS TOWER','5NW','BANGALORE','KARNATAKA'),
(2,'H-13','GD','6NW','DELHI','KARNATAKA'),
(3,'G-12','SF CITY','NO2','CHENNAI','UTTAR PRADESH');

CREATE TABLE Person_Qualification_Details(ID varchar(6) not null,SSC_Score varchar(5) not null,SSC_Board varchar(30) not null,HSC_Score varchar(5),HSC_Board varchar(30),Diploma_Score varchar(5),Qualification_1 varchar(10),Qualification_1_Score varchar(5),Qualification_2 varchar(10),Qualification_2_Score varchar(5),Qualification_3 varchar(10),Qualification_3_Score varchar(5),PRIMARY KEY (ID));

insert into Person_qualification_details values
('QF1',97,'TNB',78,'RJB',88,'AKTU',617,'JKTU',657,'IIT',693),
('QF2',62,'TNB',67,'RJB',NULL,'JEE',693,'IIT',712,'KTU',732),
('QF3',64,'MPB',80,'WBB',93,'IIT',732,'UPTU',631,'KTU',690),
('QF4',60,'MPB',87,'WBB',NULL,'UPTU',690,'JKTU',661,'UPTU',604),
('QF5',82,'TNB',75,'BB',91,'JKTU',604,'JKTU',681,'UPTU',729),
('QF6',76,'RJB',97,'BB',NULL,'WBTU',729,'WBTU',714,'JKTU',681),
('QF7',79,'RJB',100,'TNB',90,'MPTU',645,'MPTU',783,'UPTU',714),
('QF8',87,'RJB',87,'MPB',86,'IIT',657,'IIT',777,'AIEEE',783),
('QF9',77,'RJB',83,'MPB',NULL,'UPTU',712,'UPTU',699,'TNTU',777),
('QF10',74,'WBB',99,'TNB',NULL,'JKTU',631,'JKTU',614,'AKTU',699),
('QF11',65,'WBB',94,'RJB',92,'JEE',661,'JEE',604,'DTU',614),
('QF12',63,'BB',76,'RJB',NULL,'IIT',681,'KTU',642,'MPTU',604),
('QF13',64,'BB',75,'RJB',NULL,'UPTU',714,'UPTU',764,'AKTU',642),
('QF14',62,'MB',84,'RJB',NULL,'JKTU',783,'UPTU',753,'JEE',764),
('QF15',89,'KB',70,'KB',88,'JEE',777,'JKTU',767,'IIT',699),
('QF16',63,'KB',93,'KB',82,'KTU',699,'JEE',783,'UPTU',614),
('QF17',69,'KB',96,'KB',NULL,'UPTU',614,'KTU',777,'JKTU',604),
('QF18',86,'KB',74,'WBB',NULL,'UPTU',604,'KTU',699,'WBTU',604),
('QF19',64,'KB',76,'BB',NULL,'JKTU',642,'UPTU',614,'MPTU',642),
('QF20',74,'UPB',95,'BB',93,'UPTU',764,'IIT',604,'IIT',699),
('QF21',71,'UKL',86,'MB',NULL,'AIEEE',753,'JKTU',690,'UPTU',614),
('QF22',63,'UPB',75,'UPB',NULL,'TNTU',767,'IIT',604,'JKTU',604),
('QF23',82,'OB ',72,'OB ',NULL,'AKTU',735,'UPTU',729,'JEE',690),
('QF24',85,'MB',72,'MB',91,'DTU',745,'JKTU',645,'IIT',604),
('QF25',76,'OB ',80,'OB ',95,'MPTU',762,'WBTU',657,'UPTU',645);

CREATE TABLE Instructor_Designation(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));

insert into instructor_designation values
(1,'PROF'),
(2,'ASSOCIATE'),
(3,'ASSISTANT');

CREATE TABLE Staff_Designation(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));


insert into STAFF_DESIGNATION values
(1,'JUNIOR'),
(2,'SENIOR');


CREATE TABLE Program(ID varchar(6) not null,Description varchar(30) not null,Total_Credits int not null,PRIMARY KEY (ID));

insert into PROGRAM values
('PRG1','BA',40),
('PRG2','BSC',35),
('PRG3','BE',50),
('PRG4','B.TECH',55);

CREATE TABLE Salary(ID varchar(6) not null,Base_Ammount int not null,House_Rent_Allowance int not null,Montly_Bonus int not null,Transport_Allowance int not null,Medical_Allowance int not null,Performance_bonus int,PRIMARY KEY (ID));

insert into salary values
('SAL2',10716,6028,365,1160,1364,1302),
('SAL3',15494,6884,513,1373,1157,657),
('SAL4',16422,6459,472,1085,1637,1025),
('SAL5',15667,5706,556,1483,1380,680),
('SAL6',11368,5181,448,1630,1414,741),
('SAL7',16576,3893,693,1087,1616,969),
('SAL8',16519,5578,338,1218,1329,914),
('SAL9',11858,5337,506,1618,1101,1068),
('SAL10',16658,3816,502,1414,1496,1152),
('SAL11',12656,5323,514,1609,1658,895),
('SAL12',14196,4709,563,1037,1379,908),
('SAL13',16795,3827,736,1178,1535,734),
('SAL14',12673,4023,656,937,1701,537),
('SAL15',10753,6962,602,1007,1586,505),
('SAL16',11347,4876,741,1808,1302,540),
('SAL17',10329,4954,533,1775,1166,1242),
('SAL18',16799,6939,305,1483,1714,919),
('SAL19',15402,6521,520,1188,1692,845),
('SAL20',16411,6424,659,1004,1278,669),
('SAL21',12678,5455,745,1538,1359,1162),
('SAL22',14761,4620,479,1671,1124,654),
('SAL23',10575,5574,512,1556,1171,712),
('SAL24',12443,3794,385,1514,1292,1006),
('SAL25',10309,5982,404,1125,1746,906);



CREATE TABLE Department(ID varchar(6) not null,Description varchar(30) not null,PRIMARY KEY (ID));

insert into DEPARTMENT values
('D1','MANGEMENT SCHOOL'),
('D2','CS SCHOOL'),
('D3','ENGG SCHOOL');

CREATE TABLE Students_Activities(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));


insert into students_activities values
('ACT1','WRITING COMPT'),
('ACT2','SPORTS ACTIVITY'),
('ACT3','EXTRA CURRICULAR');


CREATE TABLE Awards(ID varchar(6) not null,Title varchar(20) not null,Prize int not null,PRIMARY KEY (ID));


insert into awards values
('AWD1','MR FRESHER',1000),
('AWD2','MR SPORTS',500),
('AWD3','ALLROUNDER',500);


CREATE TABLE Grades(ID varchar(6) not null,Start_Mark int not null unique,End_Mark int not null unique,PRIMARY KEY (ID));

insert into GRADES values
('A',85,100),
('B',75,85),
('C',65,75),
('D',55,65),
('E',40,55),
('F',0,40);


CREATE TABLE IS_Elective(ID varchar(6) not null,Value int not null,PRIMARY KEY (ID));

insert into IS_ELECTIVE values
(1,0),
(2,1);


CREATE TABLE Semester(ID varchar(6) not null,Value int not null,PRIMARY KEY (ID));

insert into semester values
('SM1',1),
('SM2',2),
('SM3',3),
('SM4',4),
('SM5',5),
('SM6',6),
('SM7',7),
('SM8',8);

CREATE TABLE Reference_Material(ID varchar(6) not null,Title varchar(20) not null,Publication varchar(30) not null,Price int not null,PRIMARY KEY (ID));

insert into REFERENCE_MATERIAL values
(1,'MATHEMATICS','DLW INDIA',500),
(2,'PYTHON BASICS','USA Ny',900),
(3,'SQL ADVANCE','NZ NEW',800);

CREATE TABLE Audit_Info(ID varchar(6) not null,NAAC varchar(10),NIRF varchar(10),PRIMARY KEY (ID));

insert into AUDIT_INFO values
(1,'AAA',100),
(2,'AAA',59),
(3,'AB+',80);

CREATE TABLE College_Fees(ID varchar(6) not null,Management_Fee int not null,Development_Fee int not null,Hostel_Fee int,PRIMARY KEY (ID));

insert into COLLEGE_FEES values
(1,10000,15000,20000),
(2,15000,25000,10000);

CREATE TABLE Hostel_Details(ID varchar(6) not null,Description varchar(30) not null,No_Of_Rooms int not null,PRIMARY KEY (ID));

insert into hostel_details values
(1,'TILAK, HOSTEL',50),
(2,'GANDHI HOSTEL',100);

CREATE TABLE College(ID varchar(6) not null,Address_ID varchar(6) not null,Fees_ID varchar(6) not null,Hostel_ID varchar(6),Audit_Info varchar(6),Is_Autonomous int CHECK(Is_Autonomous=0 or Is_Autonomous=1),Name varchar(20),Year_Established int not null,PRIMARY KEY (ID),FOREIGN KEY (Address_ID) REFERENCES College_Address(ID),FOREIGN KEY (Fees_ID) REFERENCES College_Fees(ID),FOREIGN KEY (Hostel_ID) REFERENCES Hostel_Details(ID),FOREIGN KEY (Audit_Info) REFERENCES Audit_Info(ID));


insert into COLLEGE values
('CL1',1,1,2,1,0,'WBIT',1980),
('CL2',2,2,1,2,0,'APJIMT',1990),
('CL3',3,2,1,3,1,'RECT',1960);

CREATE TABLE Person(ID varchar(6) not null,Qual_ID varchar(6) not null,College_ID varchar(6) not null,Login_ID varchar(6) not null,Status_ID varchar(6) not null,Role_ID varchar(6) not null,First_Name varchar(20) not null,Last_Name varchar(20) not null,DOB varchar(15) not null,Gender char CHECK(Gender='M' or Gender='F'),Email_ID varchar(50) unique,PRIMARY KEY (ID),FOREIGN KEY (Qual_ID) REFERENCES Person_Qualification_Details(ID),FOREIGN KEY (College_ID) REFERENCES College(ID),FOREIGN KEY (Login_ID) REFERENCES Login(ID),FOREIGN KEY (Status_ID) REFERENCES Person_Status(ID),FOREIGN KEY (Role_ID) REFERENCES Person_Role(ID));

insert into person values
(2,'QF2','CL1',2,1,3,'RAM','DAS','13-02-1980','M','RAMGREAT@YAHOO.COM'),
(3,'QF3','CL2',2,1,3,'SRI','VERMA','19-09-1996','F','SRI.VERMA@MNNIT.AC.IN'),
(4,'QF4','CL3',3,1,1,'VIPIN','YADAV','19-09-1996','M','VIPINY588@GMAIL.COM'),
(5,'QF5','CL3',3,1,3,'SHYAM ','SINGH','19-09-1996','M','SHYAMCOOL1@GMAIL.COM'),
(6,'QF6','CL2',2,1,3,'ADAM','PAUL','19-11-1970','M','ADAM124@YAHOO.COM'),
(7,'QF7','CL1',2,1,2,'KUMAR','SANGA','15-08-1985','M','YOURSANGA@HOTMAIL.COM'),
(8,'QF8','CL1',3,1,1,'JUHI','KHAN','14-12-1997','F','JUHI2022@DTU.AC.IN'),
(9,'QF9','CL3',4,1,1,'MEHAK','SEHGAL','26-11-1996','F','MEHAK.SEHGAL@GMAIL.COM'),
(10,'QF10','CL2',2,1,1,'MAZHAR','ALI','26-12-1998','M','ALI.MAZHAR@GMAIL.COM'),
(11,'QF11','CL1',4,2,1,'VINIT','MISHRA','19-09-1996','M','VINIT.K.MISHRA@YAHOO.COM'),
(12,'QF12','CL2',3,1,2,'DIWAKAR','KUMAR','18-10-1990','M','KUMAR1810DIWAKAR@GMAIL.COM'),
(13,'QF13','CL3',2,1,1,'MAHIMA','MULE','17-11-1997','F','MAHIMA.M.MULE@GMAIL.COM'),
(14,'QF14','CL2',3,1,1,'LIPSITA','MOHANTY','13-09-1999','F','LIPSITA.BBSR@YAHOO.COM'),
(15,'QF15','CL1',4,1,2,'NARESH','KAPOOR','15-07-1980','M','NKKAPOOR@HOTMAIL.COM'),
(16,'QF16','CL1',2,1,2,'SANJAY','SAHOO','19-09-1996','M','SANJAY.HEAD@GMAIL.COM'),
(17,'QF17','CL3',3,2,1,'BEN','STOKES','20-04-2002','M','BENCRICKETER@GMAIL.COM'),
(18,'QF18','CL3',4,1,1,'ARJITA ','SINGH','18-01-1993','F','ARJITA.LKO@GMAIL.COM'),
(19,'QF19','CL2',4,1,1,'GHAZAL','KUMARI','17-10-1995','F','GHAZAL.SINGH@YAHOO.COM'),
(20,'QF20','CL2',3,1,2,'DEV','KUMAR','25-12-1995','M','DEV.Y.KUMAR@GMAIL.COM'),
(21,'QF21','CL1',2,1,1,'VISHAL','YADAV','20-10-1999','M','VDP@YAHOO.COM'),
(22,'QF22','CL2',2,1,1,'VIKAS','THAKUR','29-08-2002','M','VIKAS.TKR@GMAIL.COM'),
(23,'QF23','CL3',3,1,2,'SATYAM','GOWDA','30-09-1995','M','SATYA.G@GMAIL.COM'),
(24,'QF24','CL3',3,1,2,'SANDEEP','MAJHI','24-04-1990','M','MAJHI.ANGUL@GMAIL.COM'),
(25,'QF25','CL2',4,1,2,'SOUMYA','SETH','18-12-1992','F','SOUMYASD@YAHOO.COM');


CREATE TABLE Contact_No(ID varchar(6) not null,Person_ID varchar(6) not null,ContactNo varchar(10) not null,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID));

insert into CONTACT_NO values
('CON2',2,452368),
('CON3',3,325146),
('CON4',4,231232),
('CON5',5,654565),
('CON6',6,987898),
('CON7',7,951565),
('CON8',8,458751),
('CON9',9,980780),
('CON10',10,650450),
('CON11',11,650321),
('CON12',12,460325),
('CON13',13,120320),
('CON14',14,120330),
('CON15',15,325046),
('CON16',16,565211),
('CON17',17,459865),
('CON18',18,154555),
('CON19',19,655478),
('CON20',20,554854),
('CON21',21,963090),
('CON22',22,850252),
('CON23',23,401506),
('CON24',24,470147),
('CON25',25,170168);



CREATE TABLE Person_Address(ID varchar(6) not null,Person_ID varchar(6) not null,House_No varchar(10) not null,Building_No varchar(10) not null,Street varchar(20) not null,Area varchar(20) not null,City varchar(20) not null,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID));

insert into person_address values
(2,2,'H-22','ER','AS','TN','CHENNAI'),
(3,3,'H-22','DA','AS','TN','CHENNAI'),
(4,4,'H-22','F','C','TN','MADURAI'),
(5,5,'H-60','SD','G','TN','MADURAI'),
(6,6,'616 6','GF','GG','RJ','JAIPUR'),
(7,7,'809 H1','VGB','AS','RJ','JAIPUR'),
(8,8,'SD','RRT','AS','RJ','AJMER'),
(9,9,'H15','FDG','AS','RJ','AJMER'),
(10,10,'H-22','YH','AS','WB','KOLKATA'),
(11,11,'H-22','FGH','DG','WB','KOLKATA'),
(12,12,'H-22','VBN','HGH','BH','GAYA'),
(13,13,'H-22','NJI','DD','BH','GAYA'),
(14,14,'H-22','KM','DRB','MH','MUMBAI'),
(15,15,'H-22','GHJ','NW','KA','BANGALORE'),
(16,16,'H-22','TY','OLD','KA','BANGALORE'),
(17,17,'H-22','UHF','DLF','KA','BANGALORE'),
(18,18,'H-22','DD','WB','KA','MANAGLORE'),
(19,19,'H-22','ESD','AD','KA','MANAGLORE'),
(20,20,'H-22','CGH','RT','UP','LUCKNOW'),
(21,21,'H-22','JH','AS','UP','LUCKNOW'),
(22,22,'H-22','KK','AS','UP','BARABANKI'),
(23,23,'H-22','BUL','AS','OR','BHUBANESHWAR'),
(24,24,'H-22','CD','S4','MH','MUMBAI'),
(25,25,'H-22','ERF','DF4','OR','BHUBANESHWAR');

    

CREATE TABLE Student(ID varchar(6) not null,Person_ID varchar(6) not null,Semester_ID varchar(6) not null,Program_ID varchar(6) not null,Is_Hostelite Varchar(4) CHECK(Is_Hostelite='Yes' or Is_Hostelite='No'),PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Semester_ID) REFERENCES Semester(ID),FOREIGN KEY (Program_ID) REFERENCES Program(ID));

insert into STUDENT values
('S20001',4,'SM2','PRG1','Yes'),
('S20002',9,'SM3','PRG2','No'),
('S20003',11,'SM4','PRG2','Yes'),
('S20004',18,'SM5','PRG3','Yes'),
('S21001',8,'SM2','PRG2','Yes'),
('S21002',13,'SM7','PRG3','Yes'),
('S21003',19,'SM7','PRG3','No'),
('S21004',21,'SM5','PRG4','No'),
('S22001',10,'SM6','PRG2','Yes'),
('S22002',14,'SM1','PRG4','Yes'),
('S22003',17,'SM2','PRG1','Yes'),
('S22004',22,'SM3','PRG4','Yes'),
('S20005',23,'SM8','PRG4','No');
 

CREATE TABLE Instructor(ID varchar(6) not null,Person_ID varchar(6) not null,Salary_ID varchar(6) not null,Dept_ID varchar(6) not null,Designation_ID varchar(6) not null,Extention int,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Salary_ID) REFERENCES Salary(ID),FOREIGN KEY (Dept_ID) REFERENCES Department(ID),FOREIGN KEY (Designation_ID) REFERENCES Instructor_Designation(ID));

insert into instructor values
('INST2',3,'SAL3','D3',2,885),
('INST3',5,'SAL5','D2',1,890),
('INST4',6,'SAL6','D3',2,992),
('INST5',2,'SAL2','D2',3,905);

CREATE TABLE Staff(ID varchar(6) not null,Person_ID varchar(6) not null,Salary_ID varchar(6) not null,Dept_ID varchar(6) not null,Designation_ID varchar(6) not null,Extention int,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Salary_ID) REFERENCES Salary(ID),FOREIGN KEY (Dept_ID) REFERENCES Department(ID),FOREIGN KEY (Designation_ID) REFERENCES Staff_Designation(ID));

insert into STAFF values
(1,7,'SAL7','D1',2,662),
(2,12,'SAL12','D3',2,602),
(3,15,'SAL16','D2',1,661),
(4,16,'SAL16','D3',1,632),
(5,20,'SAL20','D2',2,645),
(6,24,'SAL24','D1',1,604),
(7,25,'SAL25','D3',2,669);

CREATE TABLE Teaching_Assitance(ID varchar(6) not null,Person_ID varchar(6) not null,Salary_ID varchar(6) not null, Dept_ID varchar(6) not null,Extention int,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Salary_ID) REFERENCES Salary(ID),FOREIGN KEY (Dept_ID) REFERENCES Department(ID));

insert into teaching_assitance values
('TA1',4,'SAL4','D3',801),
('TA2',8,'SAL8','D2',809),
('TA3',9,'SAL9','D1',902);

CREATE TABLE Admission_Details(ID varchar(6) not null,Student_ID varchar(6) not null,Date Date,Description varchar(30) not null,PRIMARY KEY (ID),FOREIGN KEY (Student_ID) REFERENCES Student(ID));

insert into admission_details values
(1,'S20003','01-07-2001','Confirmed'),
(2,'S20004','01-07-2010','Confirmed'),
(3,'S21001','01-07-2015','Confirmed');

CREATE TABLE Lab_Assitance(ID varchar(6) not null,Person_ID varchar(6) not null,Salary_ID varchar(6) not null, Dept_ID varchar(6) not null,Extention int,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Salary_ID) REFERENCES Salary(ID),FOREIGN KEY (Dept_ID) REFERENCES Department(ID));

insert into lab_assitance values
('LA1',10,'SAL10','D3',504),
('LA2',11,'SAL11','D2',503),
('LA3',13,'SAL13','D1',555);

CREATE TABLE Tution_Fees(College_ID varchar(6) not null,Program_ID varchar(6) not null,Tution_Fees int not null,PRIMARY KEY (College_ID,Program_ID),FOREIGN KEY (College_ID) REFERENCES College(ID),FOREIGN KEY (Program_ID) REFERENCES Program(ID));


insert into tution_fees values
('CL1','PRG3',10000),
('CL3','PRG2',15000),
('CL2','PRG1',13000),
('CL3','PRG1',10000);


CREATE TABLE Course_Details(ID varchar(6) not null,Credits int CHECK (Credits>=3 and Credits<=5),Duration_hr int not null,Difficulty varchar(20) CHECK (Difficulty='Intermediate' or Difficulty='Advance' or Difficulty='Basic'),Description varchar(30),PRIMARY KEY (ID));

insert into course_details values
(1,5,40,'Basic','MATHS'),
(2,4,30,'Intermediate','HTML'),
(3,3,20,'Advance','PYTHON'),
(4,3,15,'Basic','SQL');


CREATE TABLE Course(ID varchar(6) not null,Title varchar(20) not null,CD_ID varchar(6) not null,PRIMARY KEY (ID),FOREIGN KEY (CD_ID) REFERENCES Course_Details(ID));

insert into Course values
(1,'HTML',2),
(2,'MATHS',1),
(3,'SQL',4),
(4,'PYTHON',3);

CREATE TABLE Lectures(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));

insert into lectures values
(1,'PYTHON101'),
(2,'SQL102'),
(3,'HTML102');

 
CREATE TABLE Tutorial(ID varchar(6) not null,Title varchar(20) not null,Course_ID varchar(6) not null,PRIMARY KEY (ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID));

insert into TUTORIAL values
(1,'MATHS101',2),
(2,'PYTHON101',4),
(3,'MATHS102',2);

CREATE TABLE Lab(ID varchar(6) not null,Title varchar(20) not null,Course_ID varchar(6) not null,PRIMARY KEY (ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID));


insert into LAB values
(1,'HTML104',1),
(2,'MATHS104',2),
(3,'SQL104',3);

CREATE TABLE Pre_Req(Course_ID1 varchar(6) not null,Course_ID2 varchar(6) not null,Description varchar(30) not null,FOREIGN KEY (Course_ID1) REFERENCES Course(ID),FOREIGN KEY (Course_ID2) REFERENCES Course(ID),PRIMARY KEY (Course_ID1,Course_ID2));

insert into pre_req values
(1,3,'PREREQUISITE COURSE'),
(2,3,'PREREQUISITE COURSE');

CREATE TABLE Anti_Req(Course_ID1 varchar(6) not null,Course_ID2 varchar(6) not null,Description varchar(30) not null,FOREIGN KEY (Course_ID1) REFERENCES Course(ID),FOREIGN KEY (Course_ID2) REFERENCES Course(ID),PRIMARY KEY (Course_ID1,Course_ID2));


insert into anti_req values
(1,4,'ANTIREQUISITE COURSE'),
(1,2,'ANTIREQUISITE COURSE');

CREATE TABLE Classroom(ID varchar(6) not null,RoomNo varchar(6) not null,College_ID varchar(6) not null,Dept_ID varchar(6) not null,PRIMARY KEY(ID),FOREIGN KEY (College_ID) REFERENCES College(ID),FOREIGN KEY (Dept_ID) REFERENCES Department(ID));


insert into CLASSROOM values
(1,201,'CL1','D2'),
(2,203,'CL2','D3'),
(3,102,'Cl1','D1');

CREATE TABLE Management_Role(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));

insert into management_role values
(1,'HEAD'),
(2,'MANAGER');

CREATE TABLE Board_Members(ID varchar(6) not null,Person_ID varchar(6) not null,Role_ID varchar(6) not null,Salary_ID varchar(6)not null,Name varchar(20) not null,PRIMARY KEY (ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Role_ID) REFERENCES Management_Role(ID),FOREIGN KEY (Salary_ID) REFERENCES Salary(ID));
   

insert into BOARD_MEMBERS values
(1,5,2,'SAL5','DIRECTOR'),
(2,3,1,'SAL3','SECRATORY'),
(3,6,1,'SAL6','PRESIDENT');   

CREATE TABLE Company(ID varchar(6) not null,Name varchar(20) not null,PRIMARY KEY (ID));

insert into COMPANY values
(1,'TATA'),
(2,'AMAZON'),
(3,'APPLE');


CREATE TABLE Industry_Type(ID varchar(6) not null,Name varchar(20) not null,PRIMARY KEY (ID));

insert into industry_type values
(1,'SERVICE BASED'),
(2,'PRODUCT BASED');

CREATE TABLE Job_Role(ID varchar(6) not null,Title varchar(20) not null,PRIMARY KEY (ID));

insert into JOB_ROLE values
(1,'ANALYST'),
(2,'DATA SCIENTIST'),
(3,'PRODUCT MANAGER');

CREATE TABLE Job_Salary(ID varchar(6) not null,Company_ID varchar(6) not null,Industry_ID varchar(6) not null,Role_ID varchar(6) not null,CTC int,PRIMARY KEY (ID),FOREIGN KEY (Company_ID) REFERENCES Company(ID),FOREIGN KEY (Industry_ID) REFERENCES Industry_Type(ID),FOREIGN KEY (Role_ID) REFERENCES Job_Role(ID));


insert into JOB_SALARY values
(1,1,1,2,250000),
(2,2,2,1,500000),
(3,3,2,3,600000);


CREATE TABLE Placement_Offers(ID varchar(6) not null,Job_Salary_ID varchar(6) not null,Student_ID varchar(6) not null,Description varchar(30) not null,PRIMARY KEY (ID),FOREIGN KEY (Job_Salary_ID) REFERENCES Job_Salary(ID),FOREIGN KEY (Student_ID) REFERENCES Student(ID));

insert into PLACEMENT_OFFERS values
('PL1',1,'S21001','Placed'),
('PL2',2,'S21002','Placed'),
('PL3',2,'S21003','Placed'),
('PL4',3,'S21004','Placed'),
('PL5',1,'S22001','Placed');

CREATE TABLE Scholarship(ID varchar(6) not null,Start_Score int not null,End_Score int not null,Ammount int not null,PRIMARY KEY (ID));

insert into SCHOLARSHIP values
(1,175,200,10000),
(2,150,175,20000);

CREATE TABLE Examination(ID varchar(6) not null,Invigilator_ID varchar(6) not null,Date_Time varchar(20) not null,Duration int not null,Total_Marks int not null,Course_ID varchar(6) not null,PRIMARY KEY (ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Invigilator_ID) REFERENCES Person(ID));


insert into EXAMINATION values
(1,2,'20-12-2021',3,80,2),
(2,2,'14-12-2021',3,40,3),
(3,3,'16-12-2021',3,50,4),
(4,6,'18-12-2021',3,80,1);

CREATE TABLE Student_Exam_Status(ID varchar(6) not null,Student_ID varchar(6) not null,Exam_ID varchar(6) not null,Instructor_ID varchar(6) not null,Score int not null,PRIMARY KEY (ID),FOREIGN KEY (Student_ID) REFERENCES Student(ID),FOREIGN KEY (Exam_ID) REFERENCES Examination(ID),FOREIGN KEY (Instructor_ID) REFERENCES Instructor(ID));


insert into STUDENT_EXAM_STATUS values
(1,'S20001',4,'INST2',95),
(2,'S20002',3,'INST3',90),
(3,'S20003',2,'INST4',70),
(4,'S20004',1,'INST5',80),
(5,'S21001',3,'INST2',60),
(6,'S21002',2,'INST3',50),
(7,'S21003',4,'INST2',30),
(8,'S21004',3,'INST2',80),
(9,'S22001',1,'INST3',85),
(10,'S22002',2,'INST2',90),
(11,'S22003',3,'INST4',77),
(12,'S22004',2,'INST2',72),
(13,'S20005',4,'INST3',68);

CREATE TABLE Student_Revaluation_Status(ID varchar(6) not null,Stud_Status_ID varchar(6) not null,Instructor_ID varchar(6) not null,Score int not null,PRIMARY KEY (ID),FOREIGN KEY (Stud_Status_ID) REFERENCES Student_Exam_Status(ID),FOREIGN KEY (Instructor_ID) REFERENCES Instructor(ID));

insert into student_revaluation_status values
(1,3,'INST3',85),
(2,2,'INST2',40),
(3,10,'INST4',60);

CREATE TABLE Course_Program_Elective_M(Course_ID varchar(6) not null,Program_ID varchar(6) not null,Is_Elective varchar(6) not null,PRIMARY KEY (Course_ID,Program_ID,Is_Elective),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Program_ID) REFERENCES Program(ID),FOREIGN KEY (Is_Elective) REFERENCES IS_Elective(ID));


insert into course_program_elective_m values
(1,'PRG2',1),
(2,'PRG2',2),
(2,'PRG3',2),
(3,'PRG4',1),
(4,'PRG3',2);

CREATE TABLE Course_Lectures_M(Course_ID varchar(6) not null,Lecture_ID varchar(6) not null,PRIMARY KEY (Course_ID,Lecture_ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Lecture_ID) REFERENCES Lectures(ID));


insert into course_lectures_m values
(1,1),
(2,2),
(2,3),
(3,2),
(4,3);

CREATE TABLE Instructor_Courses_M(Course_ID varchar(6) not null,Instructor_ID varchar(6) not null,PRIMARY KEY (Course_ID,Instructor_ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Instructor_ID) REFERENCES Instructor(ID));

insert into instructor_courses_m values 
(1,'INST2'),
(2,'INST4'),
(1,'INST3'),
(3,'INST3'),
(3,'INST4');

CREATE TABLE Instructor_Lectures_M(Instructor_ID varchar(6) not null,Lecture_ID varchar(6) not null,PRIMARY KEY (Instructor_ID,Lecture_ID),FOREIGN KEY (Instructor_ID) REFERENCES Instructor(ID),FOREIGN KEY (Lecture_ID) REFERENCES Lectures(ID));

insert into instructor_lectures_m values 
('INST2',1),
('INST2',2),
('INST3',2),
('INST5',2),
('INST4',1);

CREATE TABLE Role_Permission_M(Role_ID varchar(6) not null,Permission_ID varchar(6) not null,PRIMARY KEY (Role_ID,Permission_ID),FOREIGN KEY (Role_ID) REFERENCES Login_Role(ID),FOREIGN KEY (Permission_ID) REFERENCES Permissions1(ID));

insert into role_permission_m values 
(1,1),
(2,1),
(2,2),
(1,2);

CREATE TABLE Program_College_M(Program_ID varchar(6) not null,College_ID varchar(6) not null,PRIMARY KEY (Program_ID,College_ID),FOREIGN KEY (Program_ID) REFERENCES Program(ID),FOREIGN KEY (College_ID) REFERENCES College(ID));

insert into program_college_m values 
('PRG1','CL2'),
('PRG2','CL2'),
('PRG2','CL1'),
('PRG4','CL3');

CREATE TABLE Department_College_M(Dept_ID varchar(6) not null,College_ID varchar(6) not null,PRIMARY KEY (Dept_ID,College_ID),FOREIGN KEY (Dept_ID) REFERENCES Department(ID),FOREIGN KEY (College_ID) REFERENCES College(ID));

insert into department_college_m values 
('D1','CL1'),
('D2','CL1'),
('D2','CL2'),
('D3','CL1');

CREATE TABLE TA_Tutorial_M(Person_ID varchar(6) not null,Tutorial_ID varchar(6) not null,PRIMARY KEY (Person_ID,Tutorial_ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Tutorial_ID) REFERENCES Tutorial(ID));

insert into ta_tutorial_m values 
(3,1),
(5,1),
(5,2),
(2,3);

CREATE TABLE LA_Lab_M(Person_ID varchar(6) not null,Lab_ID varchar(6) not null,PRIMARY KEY (Person_ID,Lab_ID),FOREIGN KEY (Person_ID) REFERENCES Person(ID),FOREIGN KEY (Lab_ID) REFERENCES Lab(ID));

insert into LA_Lab_M values 
(3,1),
(2,1),
(2,2),
(3,3);



CREATE TABLE Courses_Semester_M(Course_ID varchar(6) not null,Semester_ID varchar(6) not null,PRIMARY KEY (Course_ID,Semester_ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Semester_ID) REFERENCES Semester(ID));

insert into courses_semester_m values
(1,'SM2'),
(2,'SM2'),
(3,'SM4'),
(3,'SM3'),
(2,'SM5'),
(4,'SM7');

CREATE TABLE Company_Role_M(Company_ID varchar(6) not null,Role_ID varchar(6) not null,PRIMARY KEY (Company_ID,Role_ID),FOREIGN KEY (Company_ID) REFERENCES Company(ID),FOREIGN KEY (Role_ID) REFERENCES Job_Role(ID));

insert into company_role_m values
(1,1),
(2,1),
(3,1),
(3,2),
(2,2);

CREATE TABLE Student_Activities_Award_M(Student_ID varchar(6) not null,Activities_ID varchar(6) not null,Award_ID varchar(6) not null,PRIMARY KEY(Student_ID,Activities_ID,Award_ID),FOREIGN KEY (Student_ID) REFERENCES Student(ID),FOREIGN KEY (Activities_ID) REFERENCES Students_Activities(ID),FOREIGN KEY (Award_ID) REFERENCES Awards(ID));

insert into student_activities_award_m values
('S21002','ACT1','AWD2'),
('S21002','ACT3','AWD2'),
('S21004','ACT2','AWD3'),
('S22001','ACT2','AWD3'),
('S22001','ACT3','AWD1'),
('S21003','ACT3','AWD3');

CREATE TABLE Courses_Ref_Materials_M(Course_ID varchar(6) not null,Reference_ID varchar(6) not null,PRIMARY KEY(Course_ID,Reference_ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Reference_ID) REFERENCES Reference_Material(ID));


insert into courses_ref_materials_m values
(2,1),
(4,2),
(2,2),
(3,1),
(3,3);


CREATE TABLE Exam_Class_M(Exam_ID varchar(6) not null,Class_ID varchar(6) not null,PRIMARY KEY(Exam_ID,Class_ID),FOREIGN KEY (Exam_ID) REFERENCES Examination(ID),FOREIGN KEY (Class_ID) REFERENCES Classroom(ID));

insert into  exam_class_m values
(1,1), 
(2,1),
(3,2),
(3,3),
(4,3);

CREATE TABLE Courses_Class_M(Course_ID varchar(6) not null,Class_ID varchar(6) not null,PRIMARY KEY(Course_ID,Class_ID),FOREIGN KEY (Course_ID) REFERENCES Course(ID),FOREIGN KEY (Class_ID) REFERENCES Classroom(ID));

insert into courses_class_m values
(1,2),
(1,1),
(2,1),
(3,2);

