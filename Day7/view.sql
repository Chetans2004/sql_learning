use university;

SELECT * FROM employees;
CREATE VIEW highest_age AS
SELECT first_name,age 
FROM users WHERE age >18;
SELECT * FROM highest_age;

-- Create a view to display employees who living  in the Bengalore
CREATE VIEW living_bengalore AS 
SELECT emp_name,city 
FROM employees 
WHERE city='Bangalore';
SELECT * FROM living_bengalore;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);
CREATE TABLE employees1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');
INSERT INTO employees1 (emp_id, emp_name, dept_id, salary) VALUES
(101, 'Amit', 1, 60000),
(102, 'Neha', 2, 45000),
(103, 'Rahul', 1, 55000),
(104, 'Priya', 3, 70000),
(105, 'Kiran', 4, 40000);

-- Create a view that shows emp_name and dept_name using a JOIN.
CREATE VIEW joins AS 
SELECT e.emp_name ,d.dept_name
FROM employees1 e
INNER JOIN departments d
ON e.dept_id=d.dept_id;
SELECT * FROM joins;

CREATE VIEW dept_wise_employees AS
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM employees1 e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

select * from dept_wise_employees;

-- Create a view that shows only HR department employees.
SELECT * FROM departments
WHERE dept_name='HR'
;

