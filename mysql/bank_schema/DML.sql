-- SELECT

-- Select all from table
SELECT * from account;
SELECT * from borrower;
SELECT * from branch; 
SELECT customer_name, customer_city from customer;
SELECT * from depositor;

-- DISTINCT
SELECT DISTINCT branch_city FROM branch;

--  WHERE

-- Operators: =, <>, >, < >=, <=, BETWEEN, NOT BETWEEN, LIKE, IN, AND, OR, NOT, IS NULL, IS NOT NULL
SELECT * FROM loan WHERE amount = 200000;
SELECT * FROM loan WHERE amount <> 1;
SELECT * FROM loan WHERE amount > 1;
SELECT * FROM loan WHERE amount < 100000;
SELECT * FROM loan WHERE amount BETWEEN 1 AND 200000;
SELECT * FROM loan WHERE amount NOT BETWEEN 1 AND 20;
SELECT * FROM loan WHERE amount IN (1000, 2000);
SELECT * FROM loan WHERE amount = 1000 AND loan_id < 5;
SELECT * FROM loan WHERE amount > 1 AND amount < 99999999;

--  Order by
SELECT * FROM customer WHERE customer_id > 0 ORDER BY customer_city, customer_id DESC;

-- Insert into specidifc coulumn
INSERT INTO customer(customer_id, customer_name, customer_street, customer_city) VALUES(7, 'Ram', 'Street street', 'Pune');

-- Update table
UPDATE customer SET customer_street = 'Another street' WHERE customer_id = 7;

-- Delete 
DELETE FROM customer WHERE customer_id = 7;
DELETE FROM custoemr;	-- Deletes all records

-- LIMIT
SELECT * FROM customer LIMIT 2, 3;

-- MIN, MAX functions
SELECT MIN(amount) FROM loan;
SELECT MAX(amount) FROM loan;

-- COUNT, AVG, SUM functions
SELECT COUNT(*) FROM customer;	
SELECT AVG(balance) FROM account;
SELECT SUM(balance) FROM account;

-- LIKE operator
SELECT * FROM customer WHERE customer_name LIKE 'sum___';

-- Aliases
SELECT customer_name as name, customer_city as "city name" from customer;
SELECT customer_name, CONCAT(customer_street, ', ', customer_city) AS address FROM customer;
SELECT c.customer_name as Name, d.account_number FROM customer as c, depositor as d WHERE c.customer_id = d.customer_id;

-- JOIN
SELECT * FROM customer JOIN depositor ON customer.customer_id = depositor.customer_id;
SELECT * FROM customer LEFT JOIN borrower ON customer.customer_id = borrower.customer_id;
SELECT * FROM customer RIGHT JOIN borrower ON customer.customer_id = borrower.customer_id;
SELECT A.customer_name AS C1, B.customer_name as C2, A.customer_city FROM customer A, customer B WHERE A.customer_id <> B.customer_id AND A.customer_city = B.customer_city;

-- UNION

(SELECT customer_id FROM customer)
UNION
(SELECT customer_id FROM depositor);

-- GROUP BY
SELECT COUNT(customer_id), customer_city FROM customer GROUP BY customer_city;

-- Having
SELECT count(customer_id), customer_city FROM customer GROUP BY customer_city HAVING count(customer_id) > 1;