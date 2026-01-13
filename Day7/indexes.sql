use university;
SHOW INDEXES FROM employees1;
SELECT * FROM employees1;
CREATE INDEX idx_dept_salary
ON employees1 (dept_id,salary);
DROP INDEX idx_dept_salary ON employees1;

SELECT * FROM employees1;

SELECT * FROM employees1 
WHERE dept_id=1 AND salary<100000;
