create database workerdb;
use workerdb;


create table worker (
worker_id INT(10) NOT NULL,
first_name VARCHAR(20),
last_name VARCHAR(25) NOT NULL,
salary DECIMAL(8, 0) NOT NULL,
joining_date DATE NOT NULL,
department VARCHAR(20)
	);
    
INSERT INTO worker
VALUES (
'1',
'Monika',
'Arora',
'100000',
str_to_date('20-FEB-2014', '%d-%M-%Y'),
'HR'
   );

    desc worker;
   
   INSERT INTO worker
VALUES (
'2',
'Niharika',
'Vema',
'80000',
str_to_date('6-JUN-2014', '%d-%M-%Y'),
'Admin'
   );
   
   INSERT INTO worker
VALUES (
'3',
'Vishal',
'Singhal',
'300000',
str_to_date('20-FEB-2014', '%d-%M-%Y'),
'HR'
   );
   
   INSERT INTO worker
VALUES (
'4',
'Amitabh',
'Singh',
'500000',
str_to_date('20-FEB-2014', '%d-%M-%Y'),
'Admin'
   );
   
   INSERT INTO worker
VALUES (
'5',
'Vivek',
'Bhati',
'500000',
str_to_date('11-JUN-2014', '%d-%M-%Y'),
'Admin'
   );
   
INSERT INTO worker
VALUES (
'6',
'Vipul',
'Diwan',
'200000',
str_to_date('11-JUN-2014', '%d-%M-%Y'),
'Account'
   );
   
   INSERT INTO worker
VALUES (
'7',
'Satish',
'Kumar',
'75000',
str_to_date('20-JAN-2014', '%d-%M-%Y'),
'Account'
   );

INSERT INTO worker
VALUES (
8,
'Geeta',
'Chauhan',
'90000',
str_to_date('14-APRIL-2014', '%d-%M-%Y'),
'Admin'
   );
   
   select * from worker;
   
   select worker_id, first_name, last_name, salary, joining_date, department from worker order by first_name asc;
   select worker_id, first_name, last_name, salary, joining_date, department from worker order by department desc;
   
   select * from worker where first_name in ( "vipul" , "satish");
   
   select * from worker where first_name like "%h" and 6;
   
   select worker_id, first_name, last_name, salary, joining_date, department from worker order by salary desc limit 6;
   
   
   select  department, count(department) from worker group by department limit 5;
   
   select  department, count(department) as people from worker group by department;
   select * from worker;
    
    
    select first_name, last_name, department, salary from worker group by salary desc limit 3;
    
    
    select worker_id, count(*) from worker group by worker_id having count(*) > 1;
    
    select worker_id, first_name, last_name, salary, joining_date, department from worker where salary <= '100000';
    
    
    create database schooldb;
    use schooldb;
    
    create table student(
      std_id INT(20) NOT NULL,
	  std_name varchar (20),
      sex varchar (20),
      percentage INT(20),
      class INT(20),
      sec varchar(20),
      stream varchar (20),
      DOB  date not null
         );
         
         desc student;
         
    INSERT INTO student 
     VALUES (
      '1001',
      'Surekha Joshi',
      'Female',
      '82',
      '12',
      'A',
      'Science',
      str_to_date('8-March-1998', '%d-%M-%Y')
      );
      
      
      INSERT INTO student 
     VALUES (
      '1002',
      'Maahi Agarawal',
      'Female',
      '56',
      '11',
      'c',
      'Commerce',
      str_to_date('23-November-2008', '%d-%M-%Y')
      );
      
      
       INSERT INTO student 
     VALUES (
      '1003',
      'Sanam Verna',
      'Male',
      '59',
      '11',
      'c',
      'Commerce',
      str_to_date('29-June-2006', '%d-%M-%Y')
      );
      
	drop table student;
    
    select * from student;
    
     INSERT INTO student 
     VALUES (
      '1004',
      'Ronit Kumar',
      'Male',
      '63',
      '11',
      'c',
      'Commerce',
      str_to_date('5-November-1997', '%d-%M-%Y')
      );
      
       INSERT INTO student 
     VALUES (
      '1005',
      'Dipesh Phulkit',
      'Male',
      '78',
      '11',
      'B',
      'Science',
      str_to_date('14-September-2003', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1006',
      'Jahanvi Phuri',
      'Female',
      '60',
      '11',
      'B',
      'Commerce',
      str_to_date('11-July-2008', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1007',
      'Sanam Kumar',
      'Male',
      '23',
      '12',
      'F',
      'Commerce',
      str_to_date('3-August-1998', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1008',
      'Sahil Saras',
      'Male',
      '56',
      '11',
      'c',
      'Commerce',
      str_to_date('11-july-2008', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1009',
      'Akshra Agarwal',
      'Female',
      '72',
      '12',
      'B',
      'Commerce',
      str_to_date('10-January-1996', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1010',
      'Stuti Mishra',
      'Female',
      '39',
      '11',
      'F',
      'Science',
      str_to_date('23-November-2008', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1011',
      'Harsh Agarwal',
      'Male',
      '42',
      '11',
      'c',
      'Science',
      str_to_date('3-August-1998', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1012',
      'Nikunj Agarwal',
      'Male',
      '49',
      '12',
      'c',
      'Commerce',
      str_to_date('28-June-1998', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1013',
      'Akriti Saxena',
      'Female',
      '89',
      '12',
      'A',
      'Science',
      str_to_date('23-November-2008', '%d-%M-%Y')
      );
      
      INSERT INTO student 
     VALUES (
      '1014',
      'Tani Rastogi',
      'Female',
      '82',
      '12',
      'A',
      'Science',
      str_to_date('23-November-2008', '%d-%M-%Y')
      );
      
      select * from student;
      
      select std_name, DOB from student;
      
      select * from student where percentage >= 80;
      
      select std_name, stream, Percentage from student where percentage > 80;
      
      select * from student where stream ='Science' and percentage > 75;
      
      