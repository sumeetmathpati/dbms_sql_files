CREATE TABLE branch (
    branch_name VARCHAR2(30),
    branch_city VARCHAR2(30) NOT NULL,
    assets NUMBER(15) NOT NULL,
    primary key(branch_name)
);

CREATE TABLE customer (
    customer_id NUMBER(15),
    customer_name VARCHAR2(30) NOT NULL,
    customer_city VARCHAR2(30) NOT NULL,
    PRIMARY KEY(customer_id)
);

CREATE TABLE account (
    account_number NUMBER(15),
    branch_name VARCHAR2(30) NOT NULL,
    balance NUMBER(15) NOT NULL,
    PRIMARY KEY(account_number),
    FOREIGN KEY(branch_name) REFERENCES branch(branch_name)
);

CREATE TABLE loan (
    loan_number NUMBER(15),
    branch_name VARCHAR2(30),
    amount NUMBER(15),
    PRIMARY KEY(loan_number),
    FOREIGN KEY(branch_name) REFERENCES branch(branch_name)
);

CREATE TABLE DEPOSITOR (
    account_number NUMBER(15),
    customer_id NUMBER(15),
    PRIMARY KEY(account_number, customer_id),
    FOREIGN KEY(account_number) REFERENCES account(account_number),
    FOREIGN KEy(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE borrower(
    customer_id NUMBER(15),
    loan_number NUMBER(15),
    PRIMARY KEY(customer_id, loan_number),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(loan_number) REFERENCES loan(loan_number);
);

-- INSERT DATA
INSERT INTO branch VALUES('Pune1', 'Pune', 7100000);
INSERT INTO branch VALUES('Pune2', 'Pune', 7100000);
INSERT INTO branch VALUES('Pune3', 'Pune', 7100000);
INSERT INTO branch VALUES('Mumbai1', 'Mumbai', 7100000);
INSERT INTO branch VALUES('Mumbai2', 'Mumbai', 7100000);
INSERT INTO branch VALUES('Delhi1', 'Delhi', 7100000);
INSERT INTO branch VALUES('Delhi2', 'Delhi', 7100000);
INSERT INTO branch VALUES('Chennai1', 'Chennai', 7100000);

INSERT INTO customer VALUES(1, 'Sumeet', 'Pune');
INSERT INTO customer VALUES(2, 'Anurag', 'Mumbai');
INSERT INTO customer VALUES(3, 'Suraj', 'NY');
INSERT INTO customer VALUES(4, 'Hu', 'Hadapsar');
INSERT INTO customer VALUES(5, 'Sherlock', 'London');
INSERT INTO customer VALUES(6, 'Gandalf', 'Middle Earth');
INSERT INTO customer VALUES(7, 'Harry', 'Little Whinging');
INSERT INTO customer VALUES(8, 'Frodo', 'Hobbiton');

INSERT INTO account VALUES(1, 'Pune1', 10000);
INSERT INTO account VALUES(2, 'Pune1', 20000);
INSERT INTO account VALUES(3, 'Pune2', 30000);
INSERT INTO account VALUES(4, 'Mumbai1', 40000);
INSERT INTO account VALUES(5, 'Mumbai2', 50000);
INSERT INTO account VALUES(6, 'Delhi1', 60000);
INSERT INTO account VALUES(7, 'Chennai1', 70000);

-- depositor(account_number, customer_id)
INSERT INTO depositor VALUES(1, 1);
INSERT INTO depositor VALUES(2, 2);
INSERT INTO depositor VALUES(3, 3);
INSERT INTO depositor VALUES(4, 4);
INSERT INTO depositor VALUES(5, 5);
INSERT INTO depositor VALUES(6, 6);
INSERT INTO depositor VALUES(7, 7);

INSERT INTO loan VALUES(1, 'Pune1', 500);
INSERT INTO loan VALUES(2, 'Mumbai1', 100);
INSERT INTO loan VALUES(3, 'Delhi1', 1500);
INSERT INTO loan VALUES(4, 'Delhi1', 2000);
INSERT INTO loan VALUES(5, 'Delhi1', 2000);

INSERT INTO borrower VALUES(1, 1);
INSERT INTO borrower VALUES(2, 2);
INSERT INTO borrower VALUES(3, 3);
INSERT INTO borrower VALUES(4, 4);
INSERT INTO borrower VALUES(5, 5);
INSERT INTO borrower VALUES(8, 5);



