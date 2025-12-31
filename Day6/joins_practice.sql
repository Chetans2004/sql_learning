USE university;
-- Show only students who have hostels.
select s.student_name
FROM student s
INNER JOIN hostel h
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel;

-- Show all students, even if they don’t have a hostel.
SELECT s.student_name 
FROM student s
LEFT JOIN hostel h
ON s.sid=h.sid;


-- Find students who do NOT have a hostel.
SELECT s.student_name,h.hostel_name
FROM student s
LEFT JOIN hostel h
ON s.sid=h.sid;
-- WHERE h.sid IS NULL;



-- Find hostels that have NO students.
SELECT h.hostel_name
FROM student s
RIGHT JOIN hostel h
ON s.sid = h.sid
WHERE s.sid IS NULL;
-- Count how many students are staying in hostels.
SELECT COUNT(s.student_name) 
FROM student s 
INNER JOIN hostel h 
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel; 


-- Count how many students are NOT staying in hostels.
SELECT COUNT(s.student_name)
-- SELECT s.student_name,h.hostel_name
FROM student s
LEFT JOIN hostel h 
ON s.sid=h.sid
WHERE h.sid IS NULL
;

-- Find students with the same name.
SELECT s.student_name
FROM student s 
INNER JOIN hostel h 
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel;


-- Show course-wise student count.
SELECT course, COUNT(*) AS student_count
FROM student
GROUP BY course;

