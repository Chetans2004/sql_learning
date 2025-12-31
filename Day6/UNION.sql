use university;

SELECT student_name FROM student
UNION ALL
SELECT hostel_name FROM hostel;
SELECT * FROM student;
SELECT * FROM hostel;

CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
    
);

INSERT INTO employees (emp_name, city) VALUES
('Priya', 'Pune'),
('Amit', 'Bangalore'),
('Sneha', 'Delhi'),
('Neha', 'Chennai');

INSERT INTO customers (customer_name, city) VALUES
('Rahul', 'Delhi'),
('Neha', 'Chennai'),
('Amit', 'Bangalore'),
('Ravi', 'Hyderabad');


-- Display a unique list of cities from both tables.
SELECT city FROM employees
UNION
SELECT city FROM customers;

-- Display a unique list of name and city from both tables.
SELECT emp_name,city FROM employees
UNION 
SELECT customer_name,city FROM customers;

SELECT * FROM employees;
SELECT * FROM customers;

-- Display names from both tables where city is Delhi.
SELECT emp_name,city FROM employees
WHERE city='Delhi'
UNION ALL
SELECT customer_name,city FROM customers
WHERE city='Delhi';

-- Display names from both tables where city starts with the letter B.
SELECT emp_name
FROM employees
WHERE emp_name LIKE 'B%'

UNION 

SELECT customer_name
FROM customers
WHERE customer_name LIKE 'B%';

SELECT emp_name AS name, 'Employee' AS source
FROM employees
UNION ALL
SELECT customer_name AS name, 'Customer' AS source
FROM customers;


