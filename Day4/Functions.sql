USE university;
select Marks FROM student;
-- 1.Aggregate Functions
-- Count Function
SELECT COUNT(*) FROM student;
SELECT COUNT(phone) FROM student;

-- SUM() FUnction
 SELECT SUM(student_id) FROM student;
 
-- AVG() Function
SELECT AVG(student_id) FROM student;


-- MIN() Function
SELECT MIN(student_id) FROM student;

-- MAX() Function
SELECT MAX(student_id) FROM student;

-- FIRST() Function
SELECT first_name
FROM student
WHERE student_id=10;


-- 2.Scalar Functions
-- UCASE() Function
SELECT UCASE(first_name) 
FROM student;

-- LCASE() 
SELECT LCASE(first_name)
FROM student;

-- MID()
SELECT MID(first_name,1,2)
FROM student
WHERE student_id=2;

-- LEN()
SELECT length(first_name)
FROM student;

-- ROUND()
SELECT ROUND(student_id,2)
FROM student;

-- NOW()
SELECT NOW();





 
 


