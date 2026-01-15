USE university;
SELECT * From courses;
SELECT * FROM student;

-- Find names of students who are enrolled in Python 
SELECT student_name
FROM student	
WHERE sid IN (
    SELECT student_id
    FROM courses
    WHERE course_name = 'Python'
);
-- Find student names who have taken SQL
SELECT student_name 
FROM student
WHERE sid IN (
	SELECT student_id 
    FROM courses
    WHERE course_name='SQL');

-- Find students whose student_id exists in the course table
SELECT sid 
FROM student
WHERE sid IN (
	SELECT student_id
    FROM courses
    WHERE student_id);
    SELECT * From courses;
SELECT * FROM student;

    

-- Find students who are enrolled in Java or C++
SELECT student_name 
FROM student 
WHERE sid IN (
	SELECT student_id 
	FROM courses
	WHERE course_name IN ('Java','C++'));
    
-- Find students who are enrolled in any course
SELECT student_name 
FROM student
WHERE sid IN (
	SELECT student_id
    FROM courses);

-- Find students who are NOT enrolled in any course
SELECT student_name
FROM student
WHERE sid NOT IN (
	SELECT student_id 
    FROM courses);

-- Find students whose student_id is greater than 3 and enrolled in a course
SELECT student_name 
FROM student
WHERE sid IN (
	SELECT student_id
    FROM courses 
    WHERE student_id > 3 );
SELECT * From courses;
SELECT * FROM student;

-- Find students who belong to BCA and are enrolled in any course
SELECT student_name 
FROM student
WHERE sid IN (
	SELECT student_id
    FROM courses
    WHERE course='BCA');
SELECT * From courses;
SELECT * FROM student;

-- Find students who are enrolled in courses other than Python
SELECT student_name 
FROM student
WHERE sid IN (
	SELECT student_id
    FROM courses
    WHERE course_name!='Python');
SELECT * From courses;
SELECT * FROM student;



				