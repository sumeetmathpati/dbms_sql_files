create database emp_db;

use emp_db;

create table emp_info(
	emp_id int auto_increment,
    name varchar(30) not null,
    designation varchar(30) not null,
    salary int(10) not null,
    doj date not null,
    city varchar(30) not null,
    primary key(emp_id)
);


create table acc_info (
	acc_no int auto_increment,
	bank_name varchar(30) not null,
	branch varchar(30) not null,
	emp_id int not null,
	account_type varchar(30) not null,
	balance int not null,
    primary key(acc_no),
    foreign key(emp_id) references emp_info(emp_id)
);5511

insert into emp_info(name, designation, salary, doj, city) values ('Rahul', 'Manager', 80000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Pooja', 'Supervisor', 60000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Sneha', 'Clerk', 20000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Prateek', 'Security', 10000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Raj', 'Admin', 20200, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Kiran', 'Ass_manager', 15320, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Neha', 'Supervisor', 41254, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Ramesh', 'Clerk', 20200, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Priyanka', 'Security', 10000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Shilpa', 'Supervisor', 25000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Shruti', 'Security', 30000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Ganesh', 'Clerk', 20200, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Sneha', 'Clerk', 45600, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Priti', 'Supervisor', 47000, '1985-02-25', 'Pune');
insert into emp_info(name, designation, salary, doj, city) values ('Amit', 'Supervisor', 20200, '1985-02-25', 'Pune');