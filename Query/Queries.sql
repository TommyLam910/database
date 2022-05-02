-- UPDATE Statement Query 1
/* Update the phone number for the Student, whose ID is 208564055 */
UPDATE Member_Phone
SET Phone = 4070260886
WHERE StudentID = 208564055;

-- DELETE Statement Query 2
/* Delete the Funded project for the table, where Project ID is P12 */
DELETE FROM Funded_Project
WHERE Project_ID = 'P12';

-- MIN() & Nested query  Query 3
/* Show the project who receive the lowest funding amount */
SELECT Project_ID, Fund AS SmallestFund
FROM Funded_Project
WHERE Fund = (SELECT MIN(Fund) From Funded_Project);

-- MAX() & Nested query  Query 4

/* Find out which project has the highest funding */
SELECT Project_ID
FROM Funded_Project
WHERE Fund = (SELECT MAX(Fund) FROM Funded_Project);

-- COUNT() and SUM() Functions Query 5

/* Show the Clubs ID, total of Student, and total portion that certain clubs of groups paid to members between 2017-08-10 and 2018-05-01 where total portion is above 700 */
SELECT Clubs_ID, COUNT(Student_ID) AS Total_Student, SUM(Portion) AS Total_Portion
FROM Member_PaidBy_Group
WHERE Paid_Date BETWEEN '2017-08-10' AND '2018-05-01'
GROUP BY Clubs_ID
HAVING SUM(Portion) > 700;

-- Left Join Query 6
/* Show the alumnu working experience who have worked at least 1 job based on the end date*/
SELECT * FROM Alumnus_WorksFor_Company
LEFT JOIN Company ON Alumnus_WorksFor_Company.Company_ID = Company.Company_ID
WHERE Alumnus_WorksFor_Company.End_date IS NOT NULL;

-- View Query 7
/* Create a view table to store the student ID, and company name to show who is working as Data Analyst*/
CREATE VIEW Alumnus_workforcompany_Info AS
SELECT Alumnus.StudentID, Alumnus_WorksFor_Company.Position_Name, Company.CompanyName FROM Alumnus
RIGHT JOIN Alumnus_WorksFor_Company ON  Alumnus.StudentID = Alumnus_WorksFor_Company.Student_ID
LEFT JOIN Company ON Company.Company_ID =  Alumnus_WorksFor_Company.Company_ID
WHERE Position_Name = 'Data Analyst';

/* Drop the view table if need */
DROP VIEW Alumnus_workforcompany_Info;

/* Display the view table which is ascending by student ID as default */
SELECT * FROM Alumnus_workforcompany_Info
ORDER BY StudentID;

-- Query 8 
/* Display the Event_Organizer, event subject which first alphabet starts with G and the registration fee is between 20 and 40*/
SELECT Event_Organizer, Event_Subject, RegistrationFee
FROM Group_Organizes_Event JOIN Event_Detail ON Group_Organizes_Event.EventID = Event_Detail.EventID
WHERE Event_Subject LIKE 'g%' AND RegistrationFee BETWEEN 20 AND 40;

-- Query 9
/*　Create a view table to store clubs ID, Group ID and project ID, and the total number of member in each group*/
CREATE VIEW total_people_in_each_group AS
SELECT Member_Join_Group.Clubs_ID, Member_Join_Group.Group_ID, Group_WorkOn_FundedProject.Project_ID, COUNT(*) AS numberOfpeopleInGroup
FROM Member_Join_Group
LEFT JOIN Group_WorkOn_FundedProject ON Group_WorkOn_FundedProject.Group_ID = Member_Join_Group.Group_ID
GROUP BY Member_Join_Group.Clubs_ID, Member_Join_Group.Group_ID, Group_WorkOn_FundedProject.Project_ID;

/* Drop the view table if need */
DROP VIEW total_people_in_each_group;

/*Display the view table*/
SELECT * FROM total_people_in_each_group;

-- Query 10
/*Display the project ID and the fund that can be divided by each member in the same group*/
SELECT Funded_Project.Project_ID, Funded_Project.Fund, ROUND(Funded_Project.Fund / total_people_in_each_group.numberOfpeopleInGroup, 2) AS Portionforeachmember FROM Funded_Project
RIGHT JOIN total_people_in_each_group ON total_people_in_each_group.Project_ID = Funded_Project.Project_ID
WHERE Funded_Project.Project_ID IS NOT NULL
ORDER BY  Funded_Project.Project_ID, Fund;

-- Query 11
/* Display departments that a company has*/
SELECT DISTINCT Company.CompanyName, Department.Department_Name
FROM Company
LEFT JOIN Department_BelongsTo_Company ON Department_BelongsTo_Company.Company_ID = Company.Company_ID
INNER JOIN Department ON Department.Department_ID = Department_BelongsTo_Company.Department_ID
GROUP BY  Company.CompanyName, Department.Department_Name 
ORDER BY  Company.CompanyName, Department.Department_Name;

-- Query 12
/*Display how many alumni working in the same company and the total and average day that they worked for the compnay*/

SELECT COUNT(Student_ID) AS Total_Alumns_in_the_same_company, Company.CompanyName, SUM(TIMESTAMPDIFF(DAY, Hire_date, End_date)) AS Total_Working_Days, ROUND(AVG(TIMESTAMPDIFF(DAY, Hire_date, End_date)),0) AS AVG_Working_Days
FROM Alumnus_WorksFor_Company
INNER JOIN Company ON Company.Company_ID = Alumnus_WorksFor_Company.Company_ID
WHERE End_date IS NOT NULL
GROUP BY CompanyName
ORDER BY CompanyName;

/* MsSQL do not support Order BY in this query, but the result is showing ascending of CompanyName, 
so I have added order by ORDER BY CompanyName ASC to show the same result */

-- Query 13
/*Display alumnus whose ID number is after 300340000, and the clubs and groups that they joined*/
SELECT Student_ID, Clubs_ID, Group_ID 
FROM Member_Join_Group
WHERE Student_ID > 300340000 AND Student_ID IN (SELECT StudentID FROM Alumnus);

-- Query 14 
/*Display which events have the highest registration fee*/
SELECT Event_Subject, RegistrationFee
FROM Event_Detail
WHERE RegistrationFee = (SELECT MAX(RegistrationFee) FROM Event_Detail);

 -- Query 15
 /* Display which events registration is free */
SELECT Event_Subject, Event_Date, Event_Organizer
FROM Event_Detail ED JOIN Group_Organizes_Event GOE ON ED.EventID = GOE.EventID
WHERE RegistrationFee = 0;

-- Query 16
/* Display which club doesn't have a instructor */
SELECT C.Clubs_ID, C.Club_Name
FROM Student_Club C LEFT JOIN Instructor I ON I.Instructor_ID = C.Instructor_ID
WHERE C.Instructor_ID IS NULL;

-- Query 17
/* Create a view table to store which student is currently in computer science faculty*/
CREATE VIEW Student_who_study_CSIS AS
SELECT Student_ID, Faculty
FROM Current_Student
WHERE Faculty = 'Computer Science';

/* Drop the view table if need */
DROP VIEW Student_who_study_CSIS;

/*Display the view table*/
SELECT * FROM Student_who_study_CSIS;

-- Query 18
/*Display the computer science faculty member from the view table and the groups that they joined  */
SELECT Student_who_study_CSIS.Student_ID, Student_who_study_CSIS.Faculty, Member_Join_Group.Group_ID 
FROM Student_who_study_CSIS
INNER JOIN Member_Join_Group ON Member_Join_Group.Student_ID = Student_who_study_CSIS.Student_ID;

-- Query 19
/*Create a view table to store which projects received the funding are above the average */
CREATE VIEW Found_Above_Average AS
SELECT Project_Name, Fund
FROM Funded_Project
WHERE Fund > (SELECT AVG(Fund) FROM Funded_Project);

/* Drop the view table if need */
DROP VIEW Found_Above_Average;

/*Display the view table*/
SELECT * FROM Found_Above_Average;

-- Query 20
/* Create a view to store each group organized how many event in total*/
CREATE VIEW Count_Organized_By_Groups AS 
SELECT Groups_BelongsTo_Club.Group_ID, COUNT(Group_Organizes_Event.EventID) AS Count_Organized
FROM Groups_BelongsTo_Club
LEFT JOIN Group_Organizes_Event ON Groups_BelongsTo_Club.Group_ID = Group_Organizes_Event.Group_ID
GROUP BY Groups_BelongsTo_Club.Group_ID;

/* Drop the view table if need */
DROP VIEW Count_Organized_By_Groups;

/*Display the table and only showing which groups have organized at least 1 event */
SELECT * FROM Count_Organized_By_Groups
WHERE Count_Organized <> 0 ;

/*Display which group has organized the mots events in total */
SELECT Group_ID, Count_Organized AS MAX_Organized
FROM Count_Organized_By_Groups
WHERE Count_Organized = (SELECT MAX(Count_Organized) FROM Count_Organized_By_Groups);















