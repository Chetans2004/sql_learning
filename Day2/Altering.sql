use startsql;
CREATE TABLE department (
	department_id int auto_increment primary key,
    department_name varchar(50) not null unique,
    location varchar(100)
    );
-- selecting all columns 
select * from department;

-- selecting specific columns
select department_id,department_name from department; 

-- adding new column in table using ALTER 
alter table department ADD column is_active boolean default True;
select is_active from department;

-- Droping column using ALTER
alter table department DROP Column is_active;

-- Modifying column type
alter table department modify department_name varchar(100);


-- moving colums 
ALTER TABLE department
MODIFY COLUMN department_name  VARCHAR(10) 
AFTER location;
select * from department;


-- Practice Question
-- 1..Adding  a new column created_at with current timestamp as default.
alter table department add  column Created_at timestamp default current_timestamp ;
select Created_at from department;

-- 2..droping the column Created_at from the table
alter table department drop column Created_at;


-- 3..Display the structure of the department table.
SHOW COLUMNS FROM department;


-- 4..Change the datatype of location to VARCHAR(150).
alter table department modify location varchar(100);

-- 5..Add a column department_code of length 5 and make it UNIQUE.
alter table department add column department_code varchar(5) unique not null;

-- 6..Rename the table department to departments.
alter table department rename to departments;



