-- 3-1
SELECT emp_id, fname, lname FROM employee ORDER BY lname, fname;

-- 3-2
SELECT account_id, cust_id, avail_balance FROM account WHERE status='ACTIVE' AND avail_balance > 2500;

-- 3-3
SELECT DISTINCT open_emp_id FROM account;

-- 3-4
SELECT p.product_cd, a.cust_id, a.avail_balance FROM product p INNER JOIN account a ON p.product_cd = a.product_cd WHERE p.product_type_cd = 'ACCOUNT' ORDER BY p.product_cd, a.cust_id;

--4-3
SELECT * FROM account WHERE open_date REGEXP '^2002';

--4-4
SELECT * FROM individual WHERE lname REGEXP '^.a' AND lname REGEXP 'a.*e';

--5-1
SELECT e.emp_id, e.fname, e.lname, b.name FROM employee e INNER JOIN branch b ON e.assigned_branch_id = b.branch_id;

--5-2
SELECT a.account_id, c.fed_id, p.name FROM account a INNER JOIN customer c ON a.cust_id = c.cust_id INNER JOIN product p ON a.product_cd = p.product_cd WHERE c.cust_type_cd='I';

--5-3
SELECT e.emp_id , e.fname, e.lname FROM employee e INNER JOIN employee mgr ON e.superior_emp_id = mgr.emp_id WHERE e.dept_id != mgr.dept_id;

--6-2
SELECT fname, lname from individual UNION SELECT fname,lname from employee;

--6-3
SELECT fname, lname from individual UNION SELECT fname,lname from employee ORDER BY lname;
