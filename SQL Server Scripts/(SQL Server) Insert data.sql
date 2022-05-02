-- the entire code works perfectly on MySQL
USE MSSQL_Student_Clubs_Management;
/* Insert Values */

-- Student_Clubs_Member
INSERT INTO Student_Clubs_Member VALUES (300346552, 'Cindy','Cheng', 'F');
INSERT INTO Student_Clubs_Member VALUES (300346553, 'Ryan', 'Huang', 'M');
INSERT INTO Student_Clubs_Member VALUES (300343125, 'Vincent', 'Wang', 'O');
INSERT INTO Student_Clubs_Member VALUES (300356242, 'Ruby', 'Ju', 'F');
INSERT INTO Student_Clubs_Member VALUES (300336441, 'Mark', 'Chang', 'M');
INSERT INTO Student_Clubs_Member VALUES (300362145, 'Otto', 'Clark', 'M');
INSERT INTO Student_Clubs_Member VALUES (300325489, 'Grace', 'Adele', 'F');
INSERT INTO Student_Clubs_Member VALUES (300323154, 'Ellie', 'Allen', 'F');
INSERT INTO Student_Clubs_Member VALUES (300345825, 'Seth', 'Martin', 'M');
INSERT INTO Student_Clubs_Member VALUES (370528133, 'Qingyuan', 'Li', 'F');
INSERT INTO Student_Clubs_Member VALUES (382109009, 'Rosa', 'Warren', 'F');
INSERT INTO Student_Clubs_Member VALUES (306385559, 'Tammy', 'Miles', 'F');
INSERT INTO Student_Clubs_Member VALUES (329627458, 'Ella', 'Tran', 'F');
INSERT INTO Student_Clubs_Member VALUES (385867626, 'Caitlin', 'Wong', 'F');
INSERT INTO Student_Clubs_Member VALUES (210027279, 'Erica', 'Cooper', 'F');
INSERT INTO Student_Clubs_Member VALUES (303679632, 'Morgan', 'Jackson', 'F');
INSERT INTO Student_Clubs_Member VALUES (278004625, 'Yuki', 'Robertson', 'F');
INSERT INTO Student_Clubs_Member VALUES (320963805, 'Petra', 'Liao', 'F');
INSERT INTO Student_Clubs_Member VALUES (342291513, 'Amber', 'Oliver', 'F');
INSERT INTO Student_Clubs_Member VALUES (309780590, 'Tommy', 'Lam', 'M');
INSERT INTO Student_Clubs_Member VALUES (376715966, 'Jacob', 'Anderson', 'M');
INSERT INTO Student_Clubs_Member VALUES (366144914, 'Rafael', 'Campos', 'M');
INSERT INTO Student_Clubs_Member VALUES (255192771, 'Ben', 'Watts', 'M');
INSERT INTO Student_Clubs_Member VALUES (274003847, 'Abdullah', 'Miles', 'M');
INSERT INTO Student_Clubs_Member VALUES (312289800, 'Brandon', 'Lawrence', 'M');
INSERT INTO Student_Clubs_Member VALUES (208564055, 'Oskar', 'Young', 'M');
INSERT INTO Student_Clubs_Member VALUES (312399660, 'Hashim', 'Yu', 'M');
INSERT INTO Student_Clubs_Member VALUES (273292515, 'Saeed', 'Lawrence', 'M');
INSERT INTO Student_Clubs_Member VALUES (231022786, 'Jerry', 'Tang', 'M');
SELECT * FROM Student_Clubs_Member;

-- Member_Phone
INSERT INTO Member_Phone VALUES (300346552, 2369990001);
INSERT INTO Member_Phone VALUES (300346553, 6043388000);
INSERT INTO Member_Phone VALUES (300346553, 6043381111);
INSERT INTO Member_Phone VALUES (300343125, 6047752316);
INSERT INTO Member_Phone VALUES (300356242, 2361158652);
INSERT INTO Member_Phone VALUES (300336441, 6042598854);
INSERT INTO Member_Phone VALUES (300336441, 6043256485);
INSERT INTO Member_Phone VALUES (382109009, 2044415804);
INSERT INTO Member_Phone VALUES (306385559, 2045186668);
INSERT INTO Member_Phone VALUES (329627458, 2043659976);
INSERT INTO Member_Phone VALUES (385867626, 2041501481);
INSERT INTO Member_Phone VALUES (210027279, 2041295515);
INSERT INTO Member_Phone VALUES (303679632, 2042590546);
INSERT INTO Member_Phone VALUES (278004625, 2044543767);
INSERT INTO Member_Phone VALUES (320963805, 2049732730);
INSERT INTO Member_Phone VALUES (342291513, 2042617055);
INSERT INTO Member_Phone VALUES (309780590, 4070213166);
INSERT INTO Member_Phone VALUES (376715966, 4076693674);
INSERT INTO Member_Phone VALUES (366144914, 4076693683);
INSERT INTO Member_Phone VALUES (255192771, 4079773836);
INSERT INTO Member_Phone VALUES (274003847, 4074176936);
INSERT INTO Member_Phone VALUES (312289800, 4079743005);
INSERT INTO Member_Phone VALUES (208564055, 4070260476);
INSERT INTO Member_Phone VALUES (312399660, 4076629345);
INSERT INTO Member_Phone VALUES (273292515, 4073718947);
INSERT INTO Member_Phone VALUES (231022786, 4079845574);
SELECT * FROM Member_Phone;

-- Alumnus
INSERT INTO Alumnus VALUES (300346552, '2018-01-20');
INSERT INTO Alumnus VALUES (300346553, '2017-10-30');
INSERT INTO Alumnus VALUES (370528133, '2019-12-20');
INSERT INTO Alumnus VALUES (306385559, '2021-12-20');
INSERT INTO Alumnus VALUES (278004625, '2018-04-26');
INSERT INTO Alumnus VALUES (309780590, '2018-04-26');
INSERT INTO Alumnus VALUES (255192771, '2019-12-20');
INSERT INTO Alumnus VALUES (312289800, '2019-12-20');
INSERT INTO Alumnus VALUES (273292515, '2015-04-26');
INSERT INTO Alumnus VALUES (231022786, '2018-04-26');
SELECT * FROM Alumnus;

-- Current Student
INSERT INTO Current_Student VALUES (300343125,'Comtuder & Info System','2021-09-07');
INSERT INTO Current_Student VALUES (300356242,'Health Care Support Work','2021-09-07');
INSERT INTO Current_Student VALUES (300336441,'Child And Youth Care','2020-09-07');
INSERT INTO Current_Student VALUES (300323154,'Business','2019-09-07');
INSERT INTO Current_Student VALUES (382109009,'Environmental Engineering', '2017-08-01');
INSERT INTO Current_Student VALUES (329627458, 'Marketing', '2017-08-09');
INSERT INTO Current_Student VALUES (385867626, 'Computer Science', '2019-03-24');
INSERT INTO Current_Student VALUES (210027279, 'Economics', '2017-08-15');
INSERT INTO Current_Student VALUES (303679632, 'Computer Science', '2017-08-15');
INSERT INTO Current_Student VALUES (320963805, 'Computer Science', '2017-08-03');
INSERT INTO Current_Student VALUES (342291513, 'Computer Science', '2017-08-24');
INSERT INTO Current_Student VALUES (376715966, 'Economics', '2017-08-24');
INSERT INTO Current_Student VALUES (366144914, 'Logistics', '2017-08-01');
INSERT INTO Current_Student VALUES (274003847, 'Logistics', '2017-08-08');
INSERT INTO Current_Student VALUES (208564055, 'Accounting', '2019-03-20');
INSERT INTO Current_Student VALUES (312399660, 'Finance ', '2017-12-18');
SELECT * FROM Current_Student;


-- Instructor
INSERT INTO Instructor VALUES (100346553, 'Saeed', 'Mirjalili');
INSERT INTO Instructor VALUES (100312546, 'Janifer', 'Linus');
INSERT INTO Instructor VALUES (100125652, 'Tina', 'Linus');
INSERT INTO Instructor VALUES (100115648, 'Jhon', 'Smith');
INSERT INTO Instructor VALUES (325496257, 'Saeed', 'Mirjalili');
INSERT INTO Instructor VALUES (335568554, 'John', 'Purcell');
INSERT INTO Instructor VALUES (308250828, 'Angela ', 'Yu');
INSERT INTO Instructor VALUES (313370173, 'Todd ', 'Mcleod');
INSERT INTO Instructor VALUES (291980468, 'Laurence ', 'Svekis');
INSERT INTO Instructor VALUES (380825823, 'Kirill ', 'Eremenko');
INSERT INTO Instructor VALUES (262322922, 'Phil ', 'Ebiner');
INSERT INTO Instructor VALUES (333383172, 'Rob ', 'Percival');
INSERT INTO Instructor VALUES (378148730, 'Bob ', 'Neuman');
INSERT INTO Instructor VALUES (250134632, 'Tony ', 'Lam');
SELECT * FROM Instructor;

-- Company
INSERT INTO Company VALUES (72444940045,'Google');
INSERT INTO Company VALUES (36304988687, 'Amazon');
INSERT INTO Company VALUES (59400083348, 'Samsung');
INSERT INTO Company VALUES (14639422763, 'Sony');
INSERT INTO Company VALUES (14461959389, 'Royal Bank Of Canada');
INSERT INTO Company VALUES (65020330876, 'Toronto-Dominion Bank');
INSERT INTO Company VALUES (89246792155, 'Rolex');
INSERT INTO Company VALUES (65716936247, 'eBay');
SELECT * FROM Company;

-- Department
INSERT INTO Department VALUES (001,'Marketing');
INSERT INTO Department VALUES (002, 'Finance');
INSERT INTO Department VALUES (003, 'Human Resource');
INSERT INTO Department VALUES (004, 'Accounting');
INSERT INTO Department VALUES (005, 'Operations');
INSERT INTO Department VALUES (006, 'Logistics');
INSERT INTO Department VALUES (007, 'IT Departmant');
INSERT INTO Department VALUES (008, 'Marketing');
INSERT INTO Department VALUES (009, 'Accounting');
INSERT INTO Department VALUES (010, 'Management');
SELECT * FROM Department;

-- Department_BelongsTo_Company
INSERT INTO Department_BelongsTo_Company VALUES (72444940045, 001);
INSERT INTO Department_BelongsTo_Company VALUES (72444940045, 002);
INSERT INTO Department_BelongsTo_Company VALUES (72444940045, 003);
INSERT INTO Department_BelongsTo_Company VALUES (72444940045, 004);
INSERT INTO Department_BelongsTo_Company VALUES (72444940045, 005);
INSERT INTO Department_BelongsTo_Company VALUES (72444940045, 006);

INSERT INTO Department_BelongsTo_Company VALUES (36304988687, 001);
INSERT INTO Department_BelongsTo_Company VALUES (36304988687, 002);
INSERT INTO Department_BelongsTo_Company VALUES (36304988687, 003);
INSERT INTO Department_BelongsTo_Company VALUES (36304988687, 004);
INSERT INTO Department_BelongsTo_Company VALUES (36304988687, 005);
INSERT INTO Department_BelongsTo_Company VALUES (36304988687, 006);

INSERT INTO Department_BelongsTo_Company VALUES (59400083348, 001);
INSERT INTO Department_BelongsTo_Company VALUES (59400083348, 002);
INSERT INTO Department_BelongsTo_Company VALUES (59400083348, 003);
INSERT INTO Department_BelongsTo_Company VALUES (59400083348, 004);
INSERT INTO Department_BelongsTo_Company VALUES (59400083348, 005);
INSERT INTO Department_BelongsTo_Company VALUES (59400083348, 006);

INSERT INTO Department_BelongsTo_Company VALUES (14639422763, 001);
INSERT INTO Department_BelongsTo_Company VALUES (14639422763, 002);
INSERT INTO Department_BelongsTo_Company VALUES (14639422763, 003);
INSERT INTO Department_BelongsTo_Company VALUES (14639422763, 004);
INSERT INTO Department_BelongsTo_Company VALUES (14639422763, 005);
INSERT INTO Department_BelongsTo_Company VALUES (14639422763, 006);

INSERT INTO Department_BelongsTo_Company VALUES (14461959389, 001);
INSERT INTO Department_BelongsTo_Company VALUES (14461959389, 002);
INSERT INTO Department_BelongsTo_Company VALUES (14461959389, 003);
INSERT INTO Department_BelongsTo_Company VALUES (14461959389, 004);
INSERT INTO Department_BelongsTo_Company VALUES (14461959389, 005);
INSERT INTO Department_BelongsTo_Company VALUES (14461959389, 006);

INSERT INTO Department_BelongsTo_Company VALUES (65020330876, 001);
INSERT INTO Department_BelongsTo_Company VALUES (65020330876, 002);
INSERT INTO Department_BelongsTo_Company VALUES (65020330876, 003);
INSERT INTO Department_BelongsTo_Company VALUES (65020330876, 004);
INSERT INTO Department_BelongsTo_Company VALUES (65020330876, 005);
INSERT INTO Department_BelongsTo_Company VALUES (65020330876, 006);

INSERT INTO Department_BelongsTo_Company VALUES (89246792155, 001);
INSERT INTO Department_BelongsTo_Company VALUES (89246792155, 002);
INSERT INTO Department_BelongsTo_Company VALUES (89246792155, 003);
INSERT INTO Department_BelongsTo_Company VALUES (65716936247, 003);
INSERT INTO Department_BelongsTo_Company VALUES (65716936247, 004);
INSERT INTO Department_BelongsTo_Company VALUES (65716936247, 005);
INSERT INTO Department_BelongsTo_Company VALUES (65716936247, 006);
SELECT * FROM Department_BelongsTo_Company;

-- Alumnus_WorksFor_Company
INSERT INTO Alumnus_WorksFor_Company VALUES (370528133, 72444940045, 001, 'Jr. Jave Developer', '2020-01-01', '2021-08-30');
INSERT INTO Alumnus_WorksFor_Company VALUES (306385559, 14639422763, 004, 'Payment Receiver', '2022-02-14',  NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (278004625, 72444940045, 005, 'Engineering designer', '2018-09-01', '2020-04-25');
INSERT INTO Alumnus_WorksFor_Company VALUES (309780590, 72444940045, 006, 'Logistics Analyst', '2019-05-01', '2021-05-30');
INSERT INTO Alumnus_WorksFor_Company VALUES (255192771, 59400083348, 004, 'Bookkeeper', '2020-04-01', NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (312289800, 36304988687, 001, 'Marketing coordinator', '2020-02-15', NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (273292515, 36304988687, 005, 'Database developer', '2017-05-25', '2021-11-01');
INSERT INTO Alumnus_WorksFor_Company VALUES (231022786, 14461959389, 006, 'Supply Chain Analyst', '2018-06-25', '2021-09-15');
INSERT INTO Alumnus_WorksFor_Company VALUES (370528133, 36304988687, 005, 'Sr. Jave Developer', '2021-09-01', NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (278004625, 59400083348, 005, 'Front end developer', '2020-05-01', NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (309780590, 36304988687, 005, 'Data Analyst', '2021-06-01', NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (273292515, 72444940045, 005, 'Database manager', '2022-01-04', NULL);
INSERT INTO Alumnus_WorksFor_Company VALUES (231022786, 65716936247, 003, 'Data Analyst', '2021-10-01', NULL);
SELECT * FROM Alumnus_WorksFor_Company;

-- Student_Club
INSERT INTO Student_Club VALUES ('C01', 'Soprt Clubs', 300346552, 100312546);
INSERT INTO Student_Club VALUES ('C02', 'Religious Clubs', NULL, 100312546);
INSERT INTO Student_Club VALUES ('C03', 'Programming Clubs', 300343125, 100346553);
INSERT INTO Student_Club VALUES ('C04', 'Computer Clubs', 300356242, NULL);
INSERT INTO Student_Club VALUES ('C05', 'Netwroks Clubs', 300356242, NULL);
INSERT INTO Student_Club VALUES ('C06', 'Database Clubs', 300336441, 100346553);
INSERT INTO Student_Club VALUES ('C07', 'Misic Clubs', NULL, 100312546);
SELECT * FROM Student_Club;

-- Groups_BelongsTo_Club
INSERT INTO Groups_BelongsTo_Club VALUES ('C01', 'G01', 312289800, '2017-09-01', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C02', 'G02', 278004625, '2017-09-01', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C03', 'G03', 370528133, '2017-09-01', '2019-04-30');
INSERT INTO Groups_BelongsTo_Club VALUES ('C04', 'G04', 370528133, '2017-09-01', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C05', 'G05', 255192771, '2017-09-01', '2019-04-30');
INSERT INTO Groups_BelongsTo_Club VALUES ('C06', 'G06', 273292515, '2018-01-04', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C07', 'G07', 329627458, '2018-01-04', '2019-12-31');
INSERT INTO Groups_BelongsTo_Club VALUES ('C01', 'G08', 370528133, '2018-01-04', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C02', 'G09', 303679632, '2018-01-04', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C03', 'G10', 309780590, '2018-01-04', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C04', 'G11', 370528133, '2019-05-03', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C05', 'G12', 208564055, '2019-05-03', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C06', 'G13', 210027279, '2022-01-01', null);
INSERT INTO Groups_BelongsTo_Club VALUES ('C07', 'G14', 231022786, '2022-01-01', null);

SELECT * FROM Groups_BelongsTo_Club;

-- Member_Join_Groupsss
INSERT INTO Member_Join_Group VALUES (382109009, 'C01', 'G01', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (382109009, 'C06', 'G13', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (382109009, 'C04', 'G11', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (329627458, 'C02', 'G02', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (329627458, 'C01', 'G01', '2017-09-30', null);
INSERT INTO Member_Join_Group VALUES (329627458, 'C07', 'G07', '2018-01-04', '2020-12-31');
INSERT INTO Member_Join_Group VALUES (366144914, 'C03', 'G03', '2017-09-01', '2019-04-30');
INSERT INTO Member_Join_Group VALUES (366144914, 'C04', 'G04', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (366144914, 'C05', 'G12', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (273292515, 'C04', 'G04', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (273292515, 'C06', 'G06', '2018-01-04', null);
INSERT INTO Member_Join_Group VALUES (273292515, 'C01', 'G01', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (273292515, 'C02', 'G02', '2015-04-26', null);
INSERT INTO Member_Join_Group VALUES (306385559, 'C05', 'G05', '2017-12-20', '2019-04-30');
INSERT INTO Member_Join_Group VALUES (306385559, 'C04', 'G04', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (306385559, 'C06', 'G06', '2018-02-01', null);
INSERT INTO Member_Join_Group VALUES (342291513, 'C07', 'G07', '2018-01-04', '2020-12-31');
INSERT INTO Member_Join_Group VALUES (342291513, 'C02', 'G02', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (231022786, 'C07', 'G07', '2018-04-26', '2020-12-31');
INSERT INTO Member_Join_Group VALUES (231022786, 'C07', 'G14', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (231022786, 'C01', 'G08', '2018-04-26', null);
INSERT INTO Member_Join_Group VALUES (231022786, 'C02', 'G09', '2018-04-26', null);
INSERT INTO Member_Join_Group VALUES (370528133, 'C06', 'G13', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (370528133, 'C03', 'G03', '2017-09-01', '2019-04-30');
INSERT INTO Member_Join_Group VALUES (370528133, 'C01', 'G08', '2019-12-20', null);
INSERT INTO Member_Join_Group VALUES (370528133, 'C04', 'G04', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (370528133, 'C04', 'G11', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (385867626, 'C05', 'G12', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (385867626, 'C07', 'G14', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (210027279, 'C01', 'G01', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (210027279, 'C06', 'G13', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (210027279, 'C02', 'G02', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (303679632, 'C03', 'G03', '2017-09-01', '2019-04-30');
INSERT INTO Member_Join_Group VALUES (303679632, 'C02', 'G09', '2018-01-04', null);
INSERT INTO Member_Join_Group VALUES (303679632, 'C06', 'G13', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (278004625, 'C02', 'G02', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (278004625, 'C07', 'G07', '2018-04-26', '2020-12-31');
INSERT INTO Member_Join_Group VALUES (278004625, 'C03', 'G10', '2018-04-26', null);
INSERT INTO Member_Join_Group VALUES (320963805, 'C07', 'G14', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (320963805, 'C04', 'G04', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (309780590, 'C01', 'G01', '2018-04-26', null);
INSERT INTO Member_Join_Group VALUES (309780590, 'C03', 'G10', '2018-01-04', null);
INSERT INTO Member_Join_Group VALUES (309780590, 'C02', 'G09', '2018-04-26', null);
INSERT INTO Member_Join_Group VALUES (376715966, 'C03', 'G03', '2017-09-01', '2019-04-30');
INSERT INTO Member_Join_Group VALUES (376715966, 'C04', 'G11', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (255192771, 'C05', 'G05', '2017-09-01', '2019-04-30');
INSERT INTO Member_Join_Group VALUES (255192771, 'C06', 'G06', '2018-01-04', null);
INSERT INTO Member_Join_Group VALUES (255192771, 'C07', 'G07', '2019-12-20', '2020-12-31');
INSERT INTO Member_Join_Group VALUES (274003847, 'C01', 'G08', '2018-04-26', null);
INSERT INTO Member_Join_Group VALUES (274003847, 'C02', 'G02', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (312289800, 'C01', 'G01', '2017-09-01', null);
INSERT INTO Member_Join_Group VALUES (312289800, 'C04', 'G04', '2019-12-20', null);
INSERT INTO Member_Join_Group VALUES (312289800, 'C06', 'G06', '2019-04-03', null);
INSERT INTO Member_Join_Group VALUES (208564055, 'C04', 'G11', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (208564055, 'C05', 'G12', '2019-05-03', null);
INSERT INTO Member_Join_Group VALUES (208564055, 'C07', 'G14', '2022-01-01', null);
INSERT INTO Member_Join_Group VALUES (312399660, 'C03', 'G10', '2018-01-04', null);
INSERT INTO Member_Join_Group VALUES (312399660, 'C02', 'G09', '2018-01-04', null);
SELECT * FROM  Member_Join_Group;

-- Event_Detail
INSERT INTO Event_Detail VALUES ('E01', 'Sporty Night', 'S', 1, 03, 20, '2017-10-01', '20:00'); 
INSERT INTO Event_Detail VALUES ('E02', 'Game of Keys', 'N', 2, 04, 20, '2017-10-04', '20:00'); 
INSERT INTO Event_Detail VALUES ('E03', 'Power Game', 'E', 1, 01, 20, '2017-10-06', '18:00'); 
INSERT INTO Event_Detail VALUES ('E04', 'Olympic Stars', 'W', 05, 03, 20, '2017-10-09', '18:30'); 
INSERT INTO Event_Detail VALUES ('E05', 'Dope Night!', 'S', 1, 03, 20, '2017-10-16', '18:30'); 
INSERT INTO Event_Detail VALUES ('E06', 'See Me Score!', 'N', 2, 02, 30, '2018-03-10', '18:00'); 
INSERT INTO Event_Detail VALUES ('E07', 'Beach Ball', 'W', 4, 03, 30, '2018-03-25', '20:00'); 
INSERT INTO Event_Detail VALUES ('E08', 'Ten-is On!', 'S', 2, 02, 30, '2018-04-04', '20:00'); 
INSERT INTO Event_Detail VALUES ('E09', 'Mess-the-Sea', 'S', 3, 05, 15, '2018-05-04', '13:00'); 
INSERT INTO Event_Detail VALUES ('E10', 'Game Night', 'N', 2, 04, 15, '2018-06-03', '13:00'); 
INSERT INTO Event_Detail VALUES ('E11', 'Go Go Team!', 'E', 1, 01, 35, '2019-10-10', '17:00'); 
INSERT INTO Event_Detail VALUES ('E12', 'Match Point!', 'W', 1, 03, 35, '2019-10-16', '17:00'); 
INSERT INTO Event_Detail VALUES ('E13', 'Sports it Up!', 'W', 1, 01, 35, '2021-06-20', '18:00'); 
INSERT INTO Event_Detail VALUES ('E14', 'Photo', 'W', 1, 01, 0, '2021-06-20', '18:00'); 
SELECT * FROM Event_Detail;

-- Groups_Organizes_Event
INSERT INTO Group_Organizes_Event VALUES( 'C01', 'G01', 'E01', 382109009);
INSERT INTO Group_Organizes_Event VALUES( 'C02', 'G02', 'E02', 329627458);
INSERT INTO Group_Organizes_Event VALUES( 'C04', 'G04', 'E03', 273292515);
INSERT INTO Group_Organizes_Event VALUES( 'C06', 'G06', 'E04', 370528133);
INSERT INTO Group_Organizes_Event VALUES( 'C01', 'G08', 'E05', 382109009);
INSERT INTO Group_Organizes_Event VALUES( 'C02', 'G09', 'E06', 329627458);
INSERT INTO Group_Organizes_Event VALUES( 'C03', 'G10', 'E07', 366144914);
INSERT INTO Group_Organizes_Event VALUES( 'C01', 'G01', 'E08', 382109009);
INSERT INTO Group_Organizes_Event VALUES( 'C05', 'G12', 'E09', 306385559);
INSERT INTO Group_Organizes_Event VALUES( 'C02', 'G02', 'E11', 329627458);
INSERT INTO Group_Organizes_Event VALUES( 'C05', 'G12', 'E12', 306385559);
INSERT INTO Group_Organizes_Event VALUES( 'C04', 'G11', 'E13', 273292515);
INSERT INTO Group_Organizes_Event VALUES( 'C05', 'G12', 'E14', 273292515);
SELECT * FROM Group_Organizes_Event;

-- Funded_Project
INSERT INTO Funded_Project VALUES ('P01', 'Sport X.', 1665);
INSERT INTO Funded_Project VALUES ('P02', 'Sportz Globe.', 1190);
INSERT INTO Funded_Project VALUES ('P03', 'Street Sports.', 1760);
INSERT INTO Funded_Project VALUES ('P04', 'Sportiality.', 1037);
INSERT INTO Funded_Project VALUES ('P05', 'Buzz Sports.', 1899);
INSERT INTO Funded_Project VALUES ('P06', 'Crunch Time Sports.', 1502);
INSERT INTO Funded_Project VALUES ('P07', 'The Exertion.', 2393);
INSERT INTO Funded_Project VALUES ('P08', 'Sports Snooze.', 1921);
INSERT INTO Funded_Project VALUES ('P09', 'Sure Win', 2438);
INSERT INTO Funded_Project VALUES ('P10', 'Game Start', 1619);
INSERT INTO Funded_Project VALUES ('P11', 'Sports Eye', 1792);
INSERT INTO Funded_Project VALUES ('P12', 'Sports Buzz', 2488);
SELECT * FROM Funded_Project;

-- Group_WorkOn_Project
INSERT INTO Group_WorkOn_FundedProject VALUES ('C01', 'G01', 'P01', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C02', 'G02', 'P02', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C04', 'G04', 'P04', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C05', 'G05', 'P05', '2018-02-24', '2018-04-10');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C06', 'G06', 'P06', '2018-02-24', '2018-04-10');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C07', 'G07', 'P07', '2018-06-17', '2018-08-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C01', 'G08', 'P08', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C02', 'G09', 'P09', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C03', 'G10', 'P10', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C04', 'G11', 'P11', '2017-10-17', '2017-12-01');
INSERT INTO Group_WorkOn_FundedProject VALUES ('C05', 'G12', 'P12', '2017-10-17', '2017-12-01');
SELECT * FROM Group_WorkOn_FundedProject;

-- Member_PayBy_Group
INSERT INTO Member_PaidBy_Group VALUES (382109009, 'C01', 'G01', 500, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (329627458, 'C02', 'G02', 400, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (366144914, 'C03', 'G03', 400, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (273292515, 'C04', 'G04', 500, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (306385559, 'C05', 'G05', 450, '2018-04-29');
INSERT INTO Member_PaidBy_Group VALUES (231022786, 'C07', 'G07', 450, '2018-08-31');
INSERT INTO Member_PaidBy_Group VALUES (312289800, 'C01', 'G01', 300, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (278004625, 'C02', 'G02', 200, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (370528133, 'C03', 'G03', 200, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (370528133, 'C04', 'G04', 250, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (255192771, 'C05', 'G05', 270, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (273292515, 'C06', 'G06', 500, '2017-12-31');
INSERT INTO Member_PaidBy_Group VALUES (329627458, 'C07', 'G07', 200, '2018-04-29');
INSERT INTO Member_PaidBy_Group VALUES (370528133, 'C01', 'G08', 400, '2018-04-29');
INSERT INTO Member_PaidBy_Group VALUES (303679632, 'C02', 'G09', 300, '2018-04-29');
INSERT INTO Member_PaidBy_Group VALUES (309780590, 'C03', 'G10', 450, '2018-04-29');
INSERT INTO Member_PaidBy_Group VALUES (370528133, 'C04', 'G11', 300, '2019-08-31');
INSERT INTO Member_PaidBy_Group VALUES (208564055, 'C05', 'G12', 400, '2019-08-31');
SELECT * FROM Member_PaidBy_Group;
