use startsql;
CREATE TABLE department(
	depatmentId int auto_increment primary key,
    departmentName varchar(30) not null unique,
	location varchar(100),
    manager_name varchar(100)
    );
    
    
    -- create table if not exists
    CREATE TABLE IF NOT EXISTS departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);