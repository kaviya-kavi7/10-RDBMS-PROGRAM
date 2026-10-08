CREATE DATABASE KAVIYA_DB;
USE KAVIYA_DB;
CREATE TABLE Course10 (
    Course_ID NUMBER(5) PRIMARY KEY,
    Course_Name VARCHAR2(30),
    Credits NUMBER(2)
);

INSERT INTO Course10 VALUES (201, 'Database System', 4);
INSERT INTO Course10 VALUES (202, 'Data Structure', 3);
INSERT INTO Course10 VALUES (203, 'Mathematics', 4);

CREATE TABLE Enrollment10 (
    Enrollment_ID NUMBER(5) PRIMARY KEY,
    Student_ID NUMBER(5),
    Course_ID NUMBER(5)
);

INSERT INTO Enrollment10 VALUES (1, 1001, 201);
INSERT INTO Enrollment10 VALUES (2, 1001, 202);
INSERT INTO Enrollment10 VALUES (3, 1002, 203);
INSERT INTO Enrollment10 VALUES (4, 1003, 201);

-- LEFT JOIN
SELECT C.Course_ID, C.Course_Name, E.Student_ID
FROM Course10 C
LEFT JOIN Enrollment10 E
ON C.Course_ID = E.Course_ID;

-- RIGHT JOIN
SELECT C.Course_ID, C.Course_Name, E.Student_ID
FROM Course10 C
RIGHT JOIN Enrollment10 E
ON C.Course_ID = E.Course_ID;
