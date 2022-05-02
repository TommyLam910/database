-- “the entire code works perfectly on MS SQL Server other than MsSQL do not support Engine InnoDB”

CREATE DATABASE MYSQLStudentClubsManagement;

USE MYSQLStudentClubsManagement;

CREATE TABLE Student_Clubs_Member (

StudentID NUMERIC(9),
First_name VARCHAR(25) NOT NULL,
Last_name VARCHAR(25) NOT NULL,
Gender CHAR(1),

PRIMARY KEY (StudentID),
CONSTRAINT gender_constr CHECK (Gender = 'F' OR Gender = 'M' OR Gender = 'O' OR Gender = 'N')
) ENGINE InnoDB;

CREATE TABLE Member_Phone (

StudentID NUMERIC(9),
Phone NUMERIC(10),

PRIMARY KEY(StudentID , Phone),
FOREIGN KEY(StudentID) REFERENCES Student_Clubs_Member (StudentID) ON DELETE CASCADE
) ENGINE InnoDB;

CREATE TABLE Alumnus(

StudentID NUMERIC(9),
Graduation_Date DATE NOT NULL,

PRIMARY KEY (StudentID),
FOREIGN KEY(StudentID) REFERENCES Student_Clubs_Member (StudentID) ON DELETE CASCADE

) ENGINE InnoDB;

CREATE TABLE Company (

Company_ID NUMERIC(11),
CompanyName VARCHAR(50) NOT NULL,

PRIMARY KEY(Company_ID)
) ENGINE InnoDB;

CREATE TABLE Department (

Department_ID INT,
Department_Name VARCHAR(15) NOT NULL,

PRIMARY KEY(Department_ID)
) ENGINE InnoDB;

CREATE TABLE Department_BelongsTo_Company (

Company_ID NUMERIC(11),
Department_ID INT,

PRIMARY KEY(Company_ID, Department_ID),
FOREIGN KEY(Company_ID) REFERENCES Company(Company_ID),
FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID)

) ENGINE InnoDB;

CREATE TABLE Alumnus_WorksFor_Company(

Student_ID NUMERIC(9),
Company_ID NUMERIC(11),
Department_ID INT,
Position_Name VARCHAR(25) NOT NULL,
Hire_date DATE ,
End_date DATE,

PRIMARY KEY (Student_ID, Company_ID, Department_ID, Hire_date),
FOREIGN KEY (Student_ID) REFERENCES Alumnus(StudentID),
FOREIGN KEY (Company_ID, Department_ID) REFERENCES Department_BelongsTo_Company(Company_ID, Department_ID) ON DELETE CASCADE,

CONSTRAINT date_constr CHECK (End_date > Hire_date)
) ENGINE InnoDB;

CREATE TABLE Current_Student(

Student_ID NUMERIC(9),
Faculty VARCHAR(25) NOT NULL,
Enrollment_date DATE NOT NULL,

PRIMARY KEY(Student_ID),
FOREIGN KEY (Student_ID) REFERENCES Student_Clubs_Member(StudentID) ON DELETE CASCADE

) ENGINE InnoDB;

CREATE TABLE Instructor (

Instructor_ID NUMERIC(9),
First_name VARCHAR(25) NOT NULL,
Last_name VARCHAR(25) NOT NULL,

PRIMARY KEY (Instructor_ID)
) ENGINE InnoDB;

CREATE TABLE Student_Club (

Clubs_ID  VARCHAR(3),
Club_Name VARCHAR(15),
Club_Lead NUMERIC(9),
Instructor_ID NUMERIC(9),

PRIMARY KEY (Clubs_ID),
FOREIGN KEY (Instructor_ID) REFERENCES Instructor (Instructor_ID) ON DELETE SET NULL,
FOREIGN KEY (Club_Lead) REFERENCES Student_Clubs_Member (StudentID) ON DELETE SET NULL,

CONSTRAINT ClubsID_constr CHECK (Clubs_ID LIKE 'C__')

) ENGINE InnoDB;

CREATE TABLE Groups_BelongsTo_Club(

Clubs_ID VARCHAR(3),
Group_ID VARCHAR(3),
Group_Head NUMERIC(9),
Establishment_Date DATE NOT NULL,
End_Date DATE,

PRIMARY KEY (Clubs_ID, Group_ID),
FOREIGN KEY (Clubs_ID) REFERENCES Student_Club(Clubs_ID) ON DELETE CASCADE,

CONSTRAINT Establishment_constr CHECK (End_date > Establishment_date),
CONSTRAINT Group_ID_constr CHECK (Group_ID LIKE 'G__')
) ENGINE InnoDB;

CREATE TABLE Event_Detail (

EventID VARCHAR(3),
Event_Subject VARCHAR (25) NOT NULL,
Building_Number CHAR(1),
Building_Floor VARCHAR(2),
Room_Number int,
RegistrationFee DECIMAL(5,2) NOT NULL,
Event_Date DATE NOT NULL,
Event_Time TIME NOT NULL,

PRIMARY KEY(EventID),
CONSTRAINT EventID_constr CHECK (EventID LIKE 'E__'),
CONSTRAINT buildingnum_constr CHECK (Building_Number = 'S' OR Building_Number = 'N' OR Building_Number = 'E' OR Building_Number = 'W' OR Building_Number = 'O')

) ENGINE InnoDB;

CREATE TABLE Group_Organizes_Event (

Clubs_ID VARCHAR(3),
Group_ID VARCHAR(3),
EventID VARCHAR(3),
Event_Organizer NUMERIC(9),

PRIMARY KEY (Clubs_ID, Group_ID, EventID, Event_Organizer ),
FOREIGN KEY (Clubs_ID, Group_ID) REFERENCES Groups_BelongsTo_Club (Clubs_ID, Group_ID) ON DELETE CASCADE,
FOREIGN KEY (EventID) REFERENCES Event_Detail (EventID) ON DELETE CASCADE,
FOREIGN KEY (Event_Organizer) REFERENCES Student_Clubs_Member (StudentID) ON DELETE CASCADE

) ENGINE InnoDB;

CREATE TABLE Member_Join_Group(

Student_ID NUMERIC(9),
Clubs_ID VARCHAR(3),
Group_ID VARCHAR(3),
Start_Date DATE NOT NULL,
End_Date DATE,

PRIMARY KEY (Student_ID, Clubs_ID, Group_ID),
FOREIGN KEY (Student_ID) REFERENCES Student_Clubs_Member(StudentID) ON DELETE CASCADE,
FOREIGN KEY (Clubs_ID, Group_ID) REFERENCES Groups_BelongsTo_Club(Clubs_ID, Group_ID) ON DELETE CASCADE,

CONSTRAINT JoinStart_Date_constr CHECK (End_date > Start_Date)

) ENGINE InnoDB;

CREATE TABLE Member_PaidBy_Group(

Student_ID NUMERIC(9),
Clubs_ID VARCHAR(3),
Group_ID VARCHAR(3),
Portion DECIMAL(7,2) NOT NULL,
Paid_Date DATE NOT NULL,

PRIMARY KEY (Student_ID, Clubs_ID, Group_ID),
FOREIGN KEY (Student_ID, Clubs_ID, Group_ID) REFERENCES Member_Join_Group(Student_ID, Clubs_ID, Group_ID) ON DELETE CASCADE
) ENGINE InnoDB;

CREATE TABLE Funded_Project(

Project_ID VARCHAR(3),
Project_Name VARCHAR(25) NOT NULL,
Fund DECIMAL(8,2) NOT NULL,

PRIMARY KEY (Project_ID),
CONSTRAINT ProjectID_constr CHECK (Project_ID LIKE 'P__')
) ENGINE InnoDB;

CREATE TABLE Group_WorkOn_FundedProject(

Clubs_ID VARCHAR(3),
Group_ID VARCHAR(3),
Project_ID VARCHAR(3),
Start_Date DATE NOT NULL,
End_Date DATE,

PRIMARY KEY (Clubs_ID,Group_ID, Project_ID),
FOREIGN KEY(Clubs_ID, Group_ID ) REFERENCES Groups_BelongsTo_Club (Clubs_ID, Group_ID) ON DELETE CASCADE,
FOREIGN KEY(Project_ID) REFERENCES Funded_Project (Project_ID) ON DELETE CASCADE
) ENGINE InnoDB;



