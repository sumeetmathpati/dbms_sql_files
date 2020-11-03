-- All the details of bank branches
SELECT * FROM branch;

-- ALl the customers having account
SELECT c.customer_name FROM customer AS c, depositor AS d WHERE c.customer_id = d.customer_id;
SELECT customer_name FROM customer JOIN depositor ON customer.customer_id = depositor.customer_id;

-- Show all loan numbers with amount
SELECT loan_id, amount FROM loan;

-- Find all the accounts with 6% of yearly intrest
SELECT account_number, balance*1.6 FROM account;

-- All account numbers where balance is less then 1000
SELECT account_number from account WHERE balance < 1000;

-- Find branched in Delhi having assets < 100000
SELECT branch_name
FROM branch
WHERE branch_city = 'delhi' AND assets < 100000;

-- Find brach name situated in Delhi and having assets less than 100000
SELECT branch_name FROM branch WHERE branch_city = 'Delhi' AND assets < 100000;

-- Find branch name and account number where balance is >- 100 and <=100000;
SELECT b.branch_name, a.account_number 
FROM branch as b JOIN account as a on b.branch_id = a.branch_id 
WHERE a.balance BETWEEN 100 AND 100000; 

-- Find all customer names having account or loan or both
SELECT customer_name FROM customer WHERE customer_id 
IN (
	(SELECT customer_id FROM borrower)
	UNION
	(SELECT customer_id FROM depositor)
);

-- Find all customer names having account and loan.
SELECT customer_name from customer WHERE customer_id IN
(SELECT borrower.customer_id FROM (
	borrower INNER JOIN depositor on borrower.customer_id = depositor.customer_id
));

-- Find all customer names having account but not loan
SELECT customer_name FROM customer WHERE customer_id IN(
	SELECT customer_id from depositor WHERE customer_id NOT IN (SELECT customer_id FROM borrower)
);


