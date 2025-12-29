use university;
select * FROM student;

UPDATE student SET first_name='Chetan'
WHERE student_id=1;



UPDATE student 
SET first_name='Vishwa',
	gender='Male' 
WHERE student_id=2;

UPDATE student SET gender='Male'
WHERE student_id=1;

DELETE   FROM student
WHERE student_id = 1;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(10),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (first_name, last_name, email, phone, age, gender, city)
VALUES
('Rahul', 'Patel', 'rahul@gmail.com', '9876543210', 22, 'Male', 'Ahmedabad'),
('Sneha', 'Sharma', 'sneha@gmail.com', '9123456789', 21, 'Female', 'Delhi'),
('Amit', 'Verma', 'amit@gmail.com', NULL, 23, 'Male', 'Mumbai'),
('Priya', 'Patel', 'priya@gmail.com', '9988776655', 20, 'Female', 'Surat'),
('Kiran', 'Rao', 'kiran@gmail.com', NULL, 24, 'Male', 'Bangalore');

select * from users;
-- Update city to 'Pune' for user with user_id = 3
UPDATE users 
SET city='Pune'
wHERE user_id=3;

-- Update phone to '9999999999' where phone is NULL
UPDATE users 
SET phone='9999999999'
WHERE user_id=5;




