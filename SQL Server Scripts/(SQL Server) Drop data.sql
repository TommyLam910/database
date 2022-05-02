-- ¡§the entire code works perfectly on MySQL¡¨
/*Drop database*/
DROP DATABASE MSSQL_Student_Clubs_Management;

/*Drop table */
-- Father
DROP TABLE Funded_Project;
DROP TABLE Company;
DROP TABLE Department;
DROP TABLE Alumnus;
DROP TABLE Current_Student;
DROP TABLE Student_Club;
DROP TABLE Event_Detail;
DROP TABLE Student_Clubs_Member;
DROP TABLE Instructor;

-- Child
DROP TABLE Member_Phone;
DROP TABLE Alumnus_WorksFor_Company;
DROP TABLE Member_PaidBy_Group;
DROP TABLE Group_WorkOn_FundedProject;
DROP TABLE Group_Organizes_Event;
DROP TABLE Member_Join_Group;
DROP TABLE Groups_BelongsTo_Club;
DROP TABLE Department_BelongsTo_Company;