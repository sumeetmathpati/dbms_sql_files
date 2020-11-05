-- Find all loans over 500
SELECT * FROM loan WHERE amount > 500;

--  Find the loan number for each loan of an amount greater than 500
SELECT loan_number FROM loan WHERE amount > 500;

-- Find the names of all customers who have a loan, an account, or both from the bank. 
(SELECT customer.customer_name FROM customer JOIN borrower ON customer.customer_id = borrower.customer_id) 
UNION
(SELECT customer.customer_name FROM customer JOIN depositor ON customer.customer_id = depositor.customer_id);
 
--  Find the names of all customers who have a loan and an account at the bank.
(SELECT customer.customer_name FROM customer JOIN borrower ON customer.customer_id = borrower.customer_id) 
INTERSECT
(SELECT customer.customer_name FROM customer JOIN depositor ON customer.customer_id = depositor.customer_id);

-- Find the names of all customers who have a loan at the Delhi1 branch.
SELECT customer.customer_name 
FROM customer 
INNER JOIN borrower ON customer.customer_id = borrower.customer_id 
INNER JOIN loan ON borrower.loan_number = loan.loan_number WHERE loan.branch_name = 'Delhi1';

--  Find the names of all customers who have a loan at the delhi1 branch, but no account at any branch of the bank
(SELECT customer.customer_name 
FROM customer 
INNER JOIN borrower ON customer.customer_id = borrower.customer_id 
INNER JOIN loan ON borrower.loan_number = loan.loan_number WHERE loan.branch_name = 'Delhi1')
MINUS
(SELECT customer.customer_name FROM customer INNER JOIN depositor ON customer.customer_id = depositor.customer_id);

-- Find the names of all customers who have an account at the Pune1 and Mumbai1 branches.
SELECT customer.customer_name 
FROM customer INNER JOIN depositor 
ON customer.customer_id = depositor.customer_id 
INNER JOIN account 
ON account.account_number = depositor.account_number
WHERE account.branch_name = 'Pune1' OR account.branch_name = 'Mumbai1';

--  Find the total amount each branch has in accounts
SELECT branch_name, SUM(balance) FROM account GROUP BY branch_name;

-- Find the average loan amount of each customer

SELECT customer.customer_name, AVG(loan.amount)
FROM loan JOIN borrower on loan.loan_number = borrower.loan_number
JOIN customer ON customer.customer_id = borrower.customer_id
GROUP BY customer.customer_name;

-- Find the names of all customers who have an account at branch located in Pune

SELECT customer.customer_name 
FROM customer JOIN depositor ON customer.customer_id = depositor.customer_id
JOIN account ON account.account_number = depositor.account_number
JOIN branch on branch.branch_name = account.branch_name
WHERE branch_city = 'Pune';







