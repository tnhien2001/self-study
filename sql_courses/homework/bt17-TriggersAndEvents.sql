use practice_data;

-- Triggers and Events

-- 1. TRIGGERS:
-- drop table if exists employee_salary;
-- create table employee_salary(
-- employee_id int,
-- employee_name varchar(255),
-- department varchar(255),
-- salary float,
-- dept_id int
-- );

-- insert into employee_salary values (1,'Andy','IT',500,1);
-- insert into employee_salary values (2,'Ben','HR',100,2);
-- insert into employee_salary values (3,'Charlie','HR',100,2);
-- insert into employee_salary values (4,'Danny','Marketing',100,3);
-- insert into employee_salary values (5,'Eric','Director',1000,4);

-- drop table if exists employee_profile;
-- create table employee_profile(
-- employee_id int,
-- employee_name varchar(255),
-- age int,
-- gender varchar(255)
-- );

-- insert into employee_profile values (1,'Andy',30,'Male');
-- insert into employee_profile values (2,'Ben',25,'Male');
-- insert into employee_profile values (3,'Charlie',25,'Male');
-- insert into employee_profile values (4,'Danny',25,'Female');
-- insert into employee_profile values (5,'Eric',35,'Male');


-- delimiter $$
-- create trigger employee_insert
-- 	after insert on employee_profile
--     for each row
-- begin 
-- 	insert into employee_salary(employee_id, employee_name)
--     values (NEW.employee_id, new.employee_name);
-- end $$
-- delimiter ;

-- insert into employee_profile
-- values (6,'Daisy',25,'Female');

-- select * from employee_salary;
-- select * from employee_profile;


-- 2. EVENTS:



