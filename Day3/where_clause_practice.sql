use university;

-- 1. Display all students from department_id = 1
select * from student where department_id=1; 

-- 2. the student whose email is rahul@gmail.com
select * from student where email = 'rahul@gmail.com';

-- 3.Show students whose last name is 'Patel'
select * from student where last_name='Patel';

-- 4.List students who do not have a phone number
select * from student where phone =null ;

-- 5.Fetch students born on 2001-01-01
SELECT * FROM student WHERE date_of_birth = '2001-01-01';

-- 6Show students born after 2000-01-01
select * from student where date_of_birth > '2000-01-01';

-- Find students whose department_id is NOT 2
select * from student where department_id != 2;

-- Show students whose student_id is between 10 and 30
select * from student where student_id between 10 and 30;

-- Find students who belong to department 1 OR 3


-- Show students created today
select * from student where created_at ='2025-12-26';

-- Find students born between 2000-01-01 and 2001-12-31
select * from student where date_of_birth= '2000-01-01' and '2001-12-31';




