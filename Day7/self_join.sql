use university;
CREATE TABLE employee (
				emp_id int PRIMARY KEY,
                emp_name varchar(50) NOT NULL,
                manager_id int ,
                FOREIGN KEY (manager_id) REFERENCES employees(emp_id));
INSERT INTO employee (emp_id, emp_name, manager_id) VALUES
(1, 'Ramesh', NULL),
(2, 'Sita', 1),
(3, 'Arjun', 1),
(4, 'Meena', 2);


SELECT * FROM employee;


SELECT e.emp_name AS Employee,
		m.emp_name AS Manager
FROM employee e
LEFT JOIN employee m
ON m.emp_id=e.manager_id;

