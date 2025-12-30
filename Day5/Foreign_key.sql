USE university;
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    student_id INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO courses (course_name, student_id)
VALUES
('Java',3),
('C++',4),
('C',5);
INSERT INTO courses (course_id, course_name, student_id)
VALUES (102, 'Python', 12);




SELECT * FROM student;
