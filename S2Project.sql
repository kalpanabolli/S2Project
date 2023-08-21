CREATE DATABASE SCHOOLDB

USE SCHOOLDB

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ClassID INT
);



INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, ClassID)
VALUES
    (1, 'Kalpana', 'Bolli', '2005-03-15', 101),
    (2, 'Sindhu', 'Sunki', '2006-07-10', 201),
    (3, 'charan', 'Eluru', '2005-09-20', 301),
    (4, 'Pavi', 'Boddu', '2007-01-25', 401),
    (5, 'Harshi', 'I', '2006-11-05', 501);


SELECT * FROM Student



CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);


INSERT INTO Subjects (SubjectID, SubjectName)
VALUES
    (10, 'Social'),
    (20, 'physics'),
    (30, 'Chemistry'),
    (40, 'English'),
    (50, 'Hindi');

SELECT * FROM Subjects


CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(20)
);


INSERT INTO Classes (ClassID, ClassName)
VALUES
    (1, 'Class A'),
    (2, 'Class B'),
    (3, 'Class C'),
    (4, 'Class D'),
    (5, 'Class E');


SELECT * FROM Classes



CREATE NONCLUSTERED INDEX IX_Student_ClassID ON Student (ClassID);


CREATE NONCLUSTERED INDEX IX_Student_LastName ON Student (LastName);


CREATE NONCLUSTERED INDEX IX_Subjects_SubjectName ON Subjects (SubjectName);


CREATE NONCLUSTERED INDEX IX_Classes_ClassName ON Classes (ClassName);

SELECT * FROM Student
SELECT * FROM Subjects
SELECT * FROM Classes