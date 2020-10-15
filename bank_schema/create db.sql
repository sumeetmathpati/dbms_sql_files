create database bank;

use bank;

create table branch (
	branch_id INT(5),
	branch_name VARCHAR(30) UNIQUE,
    branch_city VARCHAR(30) NOT NULL,
    assets INT(10) NOT NULL,
    PRIMARY KEY(branch_id)
);

create table customer (
	customer_id INT(5),
	customer_name VARCHAR(30) NOT NULL,
    customer_street VARCHAR(30) NOT NULL,
    customer_city VARCHAR(30),
    PRIMARY KEY(customer_id)
);

create table `account`(
	account_number INT(5),
    branch_id INT(5) NOT NULL,
    balance INT(10) NOT NULL,
    PRIMARY KEY(account_number),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) ON DELETE CASCADE
);

create table loan (
	loan_id INT(5),
    branch_id INT(5) NOT NULL,
    amount INT(10) NOT NULL,
    PRIMARY KEY(loan_id),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id)
);

-- Many to many relationship
create table depositor (
	customer_id INT(5),
    account_number INT(5),
    PRIMARY KEY(customer_id, account_number),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(account_number) REFERENCES account(account_number)
);

-- Many to many relationship
create table borrower (
	customer_id INT(5),
    loan_id INT(5),
    PRIMARY KEY(customer_id, loan_id)
);

-- Popuate table branch
INSERT INTO branch VALUES(1, 'Pune-1', 'Pune', 9999); 
INSERT INTO branch VALUES(2, 'Pune-2', 'Pune', 10000); 
INSERT INTO branch VALUES(3, 'Mumbai-1', 'Mumbai', 100000); 
INSERT INTO branch VALUES(4, 'Mumbai-2', 'Mumbai', 1010); 
INSERT INTO branch VALUES(5, 'Mumbai-3', 'Mumbai', 2000); 
INSERT INTO branch VALUES(6, 'Delhi-1', 'Delhi', 3000); 

-- Populate table customer
INSERT INTO customer VALUES(1, 'Sumeet', 'Second street', 'Pune');
INSERT INTO customer VALUES(2, 'Anya', 'Baker street', 'Mumbai');
INSERT INTO customer VALUES(3, 'Surjya', 'Wall street', 'Mumbai');
INSERT INTO customer VALUES(4, 'Suhya', 'Dalal street', 'Pune');
INSERT INTO customer VALUES(5, 'Hu', 'First street', 'Delhi');
INSERT INTO customer VALUES(6, 'Sherlock', 'Second street', 'Delhi');

-- Populate table  account
INSERT INTO account VALUES(1, 1, 100);
INSERT INTO account VALUES(2, 1, 100);
INSERT INTO account VALUES(3, 2, 100);
INSERT INTO account VALUES(4, 3, 100);
INSERT INTO account VALUES(5, 5, 100);
INSERT INTO account VALUES(6, 6, 100);

-- Populate table loan
INSERT INTO loan VALUES(1, 1, 1000); 
INSERT INTO loan VALUES(2, 1, 2000); 
INSERT INTO loan VALUES(3, 3, 100000); 
INSERT INTO loan VALUES(4, 6, 200000); 
INSERT INTO loan VALUES(5, 6, 50000); 

-- Populate table depositor
INSERT INTO depositor VALUES(1, 1);
INSERT INTO depositor VALUES(2, 2);
INSERT INTO depositor VALUES(3, 3);
INSERT INTO depositor VALUES(4, 4);
INSERT INTO depositor VALUES(5, 5);

-- Populate table borrower 
INSERT INTO borrower VALUES(1, 1); 
INSERT INTO borrower VALUES(1, 2); 
INSERT INTO borrower VALUES(2, 3); 
INSERT INTO borrower VALUES(3, 4); 
INSERT INTO borrower VALUES(4, 5); 
