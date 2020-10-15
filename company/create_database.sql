create database company;

use company;

create table department (
	dept_id varchar(5) not null primary key,
    dept_name varchar(30) not null
);

alter table department modify column dept_name varchar(30) not null unique;

create table emp(
	emp_id varchar(5) not null primary key,
    emp_name varchar(30) not null,
    dept_id varchar(5) references department(dept_id)
);

create table address (
	addr_id varchar(5) not null primary key,
    dept_name varchar(30) references department(dept_name),
    dept_address varchar(30) not null
);


-- INSERT

insert into department values ('1', 'R&D');
insert into department values ('2', 'HR');
insert into department values ('3', 'QA');
insert into department values ('4', 'Sales');

insert into emp values('1', 'sumeet', '1');
insert into emp values('2', 'ram', '1');
insert into emp values('3', 'shyam', '2');
insert into emp values('4', 'sherlock', '3');

insert into address values('1', 'R&D', 'Pune');
insert into address values('2', 'HR', 'Mumbai');
insert into address values('3', 'QA', 'Delhi');
insert into address values('4', 'Sales', 'Pune');


-- SELECT queries

-- Diaply name of department for empoyee where empid is gieven.
select dept_name from department where dept_id = (select dept_id from emp where emp_id = '1');

-- Display the location of department where employee <name> is given.
SELECT dept_address from address where dept_name = (SELECT dept_name from department WHERE dept_id = (SELECT dept_id from emp WHERE emp_name = 'sumeet'));

-- Display total number of employees working in each department
SELECT dept_id, COUNT(*) from emp GROUP BY dept_id;