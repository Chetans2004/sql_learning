USE university;

-- WHERE Clause – Practice Questions
-- Fetch all students whose age is greater than 20
SELECT * FROM students
WHERE age >20;

-- Get students whose department_id = 2
SELECT * FROM students
WHERE id=2;

-- Fetch students whose marks are between 60 and 80
SELECT * FROM studnets 
WHERE marks between 60 and 80;

SELECT * FROM student;

-- Get students whose department is NULL
SELect * from student
WHERE department IS NULL;

-- Fetch students whose name starts with ‘A’
SELECT * FROM student
WHERE student_name like 'a%';

-- Update marks to 75 for student with student_id = 3
UPDATE student SET marks=90
WHERE sid=116;


-- Delete students whose marks are less than 35
DELETE FROM student 
WHERE marks >30;

-- Delete student with student_id = 100
DELETE FROM student 
WHERE sid=102;

-- Rename column name to student_name
ALTER TABLE student 
CHANGE name student_name VARCHAR(50);

-- Find average marks of all students
SELECT AVG(marks) FROM student;

-- Find maximum marks
SELECT MAX(marks) FROM student;

-- Count total number of students
SELECT COUNT(*) FROM student;


-- Convert all student names to UPPERCASE
SELECT UCASE(student_name) FROM student;

-- Find length of each student name
SELECT length(student_name) FROM student;

-- Round average marks to nearest integer
SELECT FLOOR(marks) FROM student;

-- Extract first 3 characters from student name 	
SELECT SUBSTRING(student_name, 1, 3) AS first_three_chars
FROM student;

-- Update marks by +10 where department is Computer Science
SELECT * FROM student;
UPDATE student 
SET marks=marks+10
WHERE department='CSE';


-- Find average marks of students whose age > 20
SELECT AVG(marks) FROM student
WHERE marks >80;




