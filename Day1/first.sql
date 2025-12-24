
use startsql;
create table student(
	Users_id int auto_increment primary key,
    name varchar(50) not null,
    email varchar(50) unique not null,
    Age int,
    Join_date date
    );
    select * from Users;
 
 