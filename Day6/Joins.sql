USE university;
SELECT * FROM student;
SELECT * FROM hostel;


CREATE TABLE student (
    sid INT PRIMARY KEY,
    student_name VARCHAR(50),
    course VARCHAR(50)
);

CREATE TABLE hostel (
    hid INT PRIMARY KEY,
    hostel_name VARCHAR(50),
    sid INT,
    FOREIGN KEY (sid) REFERENCES student(sid)
);

INSERT INTO student VALUES
-- (1, 'Rahul', 'BCA'),
-- (2, 'Anita', 'BSc'),
-- (3, 'Suresh', 'BCom'),
-- (4, 'Neha', 'BCA')
(6,'Chandan','BCA');


INSERT INTO hostel VALUES
-- (101, 'Boys Hostel', 1),
-- (102, 'Girls Hostel', 2),
-- (103, 'Girls Hostel', 4),
(106,'Girls Hostel',7);	

-- INNER JOIN
SELECT s.student_name,h.hostel_name 
FROM student s
INNER JOIN hostel h
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel;


-- LEFT JOIN
SELECT s.student_name,h.hostel_name
FROM student s
LEFT JOIN hostel h
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel;

INSERT INTO hostel VALUES
(104,'Girls Hostel',5);


SELECT s.student_name,h.hostel_name 
FROM student s
LEFT JOIN hostel h
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel;

-- RIGHT JOIN
SELECT s.student_name,h.hostel_name 
FROM student s
RIGHT  JOIN hostel h
ON s.sid=h.sid;
SELECT * FROM student;
SELECT * FROM hostel;



-- FULL or OUTER JOIN
SELECT s.student_name, h.hostel_name
FROM student s
LEFT JOIN hostel h
ON s.sid = h.sid

UNION

SELECT s.student_name, h.hostel_name
FROM student s
RIGHT JOIN hostel h
ON s.sid = h.sid;


-- CROSS JOIN
SELECT s.student_name, h.hostel_name
FROM student s
CROSS JOIN hostel h;
SELECT * FROM student;
SELECT * FROM hostel;


