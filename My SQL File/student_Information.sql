create database student_Information;
CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    GPA DECIMAL(4,2),
    Enrollment_Date DATE,
    Enrollment_Time TIME,
    Major VARCHAR(50)
);

-- Insert data into Students table
INSERT INTO Students (Student_ID, First_Name, Last_Name, GPA, Enrollment_Date, Enrollment_Time, Major) VALUES
(201, 'Alice', 'Johnson', 8.79, '2021-09-01', '09:30:00', 'CSE'),
(202, 'Bob', 'Smith', 9.14, '2021-09-01', '08:30:00', 'Math'),
(203, 'Charlie', 'Brown', 8.44, '2021-09-01', '11:00:00', 'Biology'),
(204, 'Diana', 'White', 5.92, '2021-09-01', '10:45:00', 'Chemistry'),
(205, 'Ethan', 'Black', 7.86, '2021-09-01', '09:30:00', 'Physics'),
(206, 'Fiona', 'Green', 5.78, '2021-09-01', '06:45:00', 'History'),
(207, 'George', 'Hall', 9.65, '2021-09-01', '12:00:00', 'English'),
(208, 'Hannah', 'Adams', 8.74, '2021-09-01', '10:30:00', 'Math');

-- Create table 2: Program Information
CREATE TABLE Programs (
    Student_ID INT,
    Program_Name VARCHAR(50),
    Program_Start_Date DATETIME,
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID)
);

-- Insert data into Programs table
INSERT INTO Programs (Student_ID, Program_Name, Program_Start_Date) VALUES
(201, 'CSE', '2021-09-01 00:00:00'),
(202, 'Math', '2021-09-01 00:00:00'),
(208, 'Math', '2021-09-01 00:00:00'),
(203, 'Physics', '2021-09-01 00:00:00'),
(205, 'Chemistry', '2021-09-01 00:00:00'),
(204, 'Psychology', '2021-09-01 00:00:00'),
(207, 'History', '2021-09-01 00:00:00'),
(206, 'Biology', '2021-09-01 00:00:00');

-- Create table 3: Scholarship Information
CREATE TABLE Scholarships (
    Student_Ref_ID INT,
    Scholarship_Amount INT,
    Scholarship_Date DATETIME,
    FOREIGN KEY (Student_Ref_ID) REFERENCES Students(Student_ID)
);

-- Insert data into Scholarships table
INSERT INTO Scholarships (Student_Ref_ID, Scholarship_Amount, Scholarship_Date) VALUES
(201, 5000, '2021-10-15 00:00:00'),
(202, 4500, '2022-08-18 00:00:00'),
(203, 3000, '2022-01-25 00:00:00'),
(204, 4000, '2021-10-15 00:00:00');
----------------------------------------
-- Querry 1 
SELECT UPPER(First_Name) AS STUDENT_NAME
FROM Students;
-- Querry 2
SELECT DISTINCT Major
FROM Students;

SELECT Major
FROM Students
GROUP BY Major;
-- Querry 3 
SELECT SUBSTRING(First_Name, 1, 3)
FROM Students;
-- Querry 4 
SELECT INSTR(LOWER(First_Name), 'a')
FROM Students
WHERE First_Name = 'Shivansh';
-- Querry 5
select distinct MAJOR , length(Major) From students;
-- Querry 6
select replace(First_Name,'a','A') from students;
-- Querry 8
select*from students order by First_Name,Major desc;
-- Querry 9
SELECT * FROM Students WHERE FIRST_NAME IN ('Prem', 'Shivansh');
-- Querry 10
SELECT * FROM Students WHERE FIRST_NAME NOT IN ('Prem', 'Shivansh');
-- Querry 11
SELECT * FROM Students WHERE FIRST_NAME LIKE '%a';
-- Querry 12
SELECT * FROM Students WHERE FIRST_NAME LIKE '___a';
-- Querry 13
SELECT * FROM Students WHERE GPA BETWEEN 9.00 AND 9.99;
-- Querry 14
SELECT MAJOR, COUNT(*) AS TOTAL_COUNT FROM Students WHERE MAJOR = 'Computer Science';
-- Querry 15
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME
FROM Students
WHERE GPA BETWEEN 8.5 AND 9.5;
-- Querry 16
SELECT MAJOR, COUNT(MAJOR)
FROM Students
GROUP BY MAJOR
ORDER BY COUNT(MAJOR) DESC;
-- Querry 17
SELECT 
  Students.FIRST_NAME,
  Students.LAST_NAME,
  Scholarships.SCHOLARSHIP_AMOUNT,
  Scholarships.SCHOLARSHIP_DATE
FROM Students
INNER JOIN Scholarships 
ON Students.Student_ID = Scholarships.Student_Ref_ID;
-- Querry 18
SELECT * FROM Students WHERE Student_ID % 2 = 1;
-- Querry 19
SELECT * FROM Students WHERE Student_ID % 2 = 0;
-- Querry 20
SELECT 
  Students.FIRST_NAME, 
  Students.LAST_NAME,
  Scholarships.SCHOLARSHIP_AMOUNT,
  Scholarships.SCHOLARSHIP_DATE
FROM Students
LEFT JOIN Scholarships 
ON Students.Student_ID = Scholarships.Student_Ref_ID;
-- Querry 21 
SELECT * FROM Students ORDER BY GPA DESC LIMIT 5;
-- Querry 22
SELECT * FROM Students ORDER BY GPA DESC LIMIT 1 OFFSET 4;
-- Querry 23
SELECT * FROM Students s1
WHERE 4 = (
  SELECT COUNT(DISTINCT s2.GPA)
  FROM Students s2
  WHERE s2.GPA >= s1.GPA
);
-- Querry 23
SELECT * FROM Students s1
WHERE 4 = (
  SELECT COUNT(DISTINCT s2.GPA)
  FROM Students s2
  WHERE s2.GPA >= s1.GPA
);
-- Querry 24
SELECT s1.*
FROM Students s1, Students s2
WHERE s1.GPA = s2.GPA AND s1.Student_ID != s2.Student_ID;
-- Querry 25
SELECT MAX(GPA) 
FROM Students 
WHERE GPA NOT IN (SELECT MAX(GPA) FROM Students);
-- Querry 25
SELECT * FROM Students
UNION ALL
SELECT * FROM Students ORDER BY STUDENT_ID;
-- Querry 26
SELECT * FROM Students
ORDER BY STUDENT_ID DESC
LIMIT 1;
-- Querry 27
SELECT * FROM Students
WHERE STUDENT_ID NOT IN (SELECT STUDENT_ID FROM Scholarships);
-- Querry 28
SELECT * FROM Students
LIMIT (SELECT COUNT (*)/2) FROM Students);
-- Querry 29
SELECT MAJOR, COUNT(MAJOR) AS MAJOR_COUNT
FROM Students
GROUP BY MAJOR
HAVING COUNT(MAJOR) < 4;
-- Querry 30
SELECT MAJOR, COUNT(MAJOR) AS ALL_MAJOR
FROM Students
GROUP BY MAJOR;
-- Querry 31
SELECT * FROM Students
WHERE STUDENT_ID = (SELECT MAX(STUDENT_ID) FROM Students);
-- Querry 32
SELECT * FROM Students
WHERE STUDENT_ID = (SELECT MIN(STUDENT_ID) FROM Students);
-- Querry 33
SELECT * 
FROM (
  SELECT * FROM Students
  ORDER BY STUDENT_ID DESC
  LIMIT 5
) AS subquery
ORDER BY STUDENT_ID;
-- Querry 34
SELECT DISTINCT GPA FROM Students S1
WHERE 3 = (
  SELECT COUNT(DISTINCT GPA)
  FROM Students S2
  WHERE S1.GPA <= S2.GPA
)
ORDER BY S1.GPA DESC;
-- Querry 35
SELECT DISTINCT GPA FROM Students S1
WHERE 3 = (
  SELECT COUNT(DISTINCT GPA)
  FROM Students S2
  WHERE S1.GPA >= S2.GPA
)
ORDER BY S1.GPA ASC;
-- Querry 36
SELECT DISTINCT GPA FROM Students S1
WHERE n = (SELECT COUNT(DISTINCT GPA)
  FROM Students S2
  WHERE S1.GPA <= S2.GPA
)
ORDER BY S1.GPA DESC;
-- Querry 37
SELECT MAJOR, MAX(GPA) AS MaxGPA
FROM Students
GROUP BY MAJOR;
-- Querry 38
SELECT FIRST_NAME, GPA
FROM Students
WHERE GPA = (SELECT MAX(GPA) FROM Students);
-- Querry 39
SELECT CURDATE();  -- Only date
SELECT NOW();      -- Date and time
-- Querry 40
CREATE TABLE CloneTable AS
SELECT * FROM Students;
-- Querry 41
UPDATE Students
SET GPA = 7.5
WHERE MAJOR = 'Computer Science';
-- Querry 42
SELECT MAJOR, AVG(GPA) AS AVERAGE_GPA
FROM students
GROUP BY MAJOR;
-- Querry 43
SELECT *
FROM students
ORDER BY GPA DESC
LIMIT 3;
-- Querry 44
SELECT MAJOR, COUNT(STUDENT_ID) AS High_GPA_Count
FROM students
WHERE GPA > 7.5
GROUP BY MAJOR;
-- Querry 45
SELECT *FROM students
WHERE GPA = (select GPA from students where Student_ID=201);
 
 

























