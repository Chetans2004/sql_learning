use university;
create table student(
	student_id int auto_increment primary key,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    email varchar(50) unique not null,
    phone varchar(10) unique,
    date_of_birth date,
    department_id int not null,
    created_at timestamp default current_timestamp
    );
    
   INSERT INTO student
(first_name, last_name, email, phone, date_of_birth, department_id,gender)
VALUES
('Aarav','Patel','aarav1@gmail.com','9000000001','2001-01-05',1,'male'),
('Vivaan','Sharma','vivaan2@gmail.com','9000000002','2001-02-10',2,'female'),
('Aditya','Verma','aditya3@gmail.com','9000000003','2000-03-15',3),
('Arjun','Reddy','arjun4@gmail.com','9000000004','2000-04-20',1),
('Sai','Kumar','sai5@gmail.com','9000000005','2001-05-25',2),
('Rohit','Singh','rohit6@gmail.com','9000000006','2000-06-12',3),
('Karan','Mehta','karan7@gmail.com','9000000007','2001-07-18',1),
('Ankit','Gupta','ankit8@gmail.com','9000000008','2000-08-22',2),
('Rahul','Joshi','rahul9@gmail.com','9000000009','2001-09-14',3),
('Siddharth','Nair','sid10@gmail.com','9000000010','2000-10-30',1),

('Neha','Iyer','neha11@gmail.com','9000000011','2001-01-11',2),
('Pooja','Kulkarni','pooja12@gmail.com','9000000012','2000-02-19',3),
('Sneha','Bansal','sneha13@gmail.com','9000000013','2001-03-21',1),
('Kavya','Rao','kavya14@gmail.com','9000000014','2000-04-09',2),
('Divya','Mishra','divya15@gmail.com','9000000015','2001-05-27',3),
('Ananya','Chopra','ananya16@gmail.com','9000000016','2000-06-16',1),
('Isha','Malhotra','isha17@gmail.com','9000000017','2001-07-03',2),
('Riya','Agarwal','riya18@gmail.com','9000000018','2000-08-24',3),
('Nikita','Desai','nikita19@gmail.com','9000000019','2001-09-12',1),
('Megha','Pandey','megha20@gmail.com','9000000020','2000-10-05',2),

('Aman','Yadav','aman21@gmail.com','9000000021','2001-01-17',3),
('Suresh','Patil','suresh22@gmail.com','9000000022','2000-02-28',1),
('Nikhil','Jain','nikhil23@gmail.com','9000000023','2001-03-08',2),
('Harsh','Saxena','harsh24@gmail.com','9000000024','2000-04-14',3),
('Varun','Khanna','varun25@gmail.com','9000000025','2001-05-06',1),
('Deepak','Chaudhary','deepak26@gmail.com','9000000026','2000-06-18',2),
('Manish','Arora','manish27@gmail.com','9000000027','2001-07-27',3),
('Prateek','Goyal','prateek28@gmail.com','9000000028','2000-08-01',1),
('Ashish','Tripathi','ashish29@gmail.com','9000000029','2001-09-19',2),
('Sumit','Kohli','sumit30@gmail.com','9000000030','2000-10-23',3);

    
    select * from student;
select * from student where student_id<10;


-- between 
select first_name ,date_of_birth
from student 
where date_of_birth between '2001-01-01' and '2001-5-30';


alter table student add column gender varchar(10);
alter table student modify gender varchar(10);
INSERT INTO student
(first_name, last_name, email, phone, date_of_birth, department_id, gender)
VALUES
('Ravi', 'Kumar', 'ravi.kumar@gmail.com', '9000000201', '2001-05-10', 1, 'Male');
select * from student;
select first_name,department_id 
from student
where department_id in (1,2);


