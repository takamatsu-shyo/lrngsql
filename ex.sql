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

--10-1
SELECT a.*  FROM account a RIGHT OUTER JOIN product p ON a.product_cd = p.product_cd;

--10-2
SELECT a.*  FROM product p LEFT OUTER JOIN account t ON a.product_cd = p.product_cd;

--10-3
ELECT a.account_id, a.product_cd, i.fname, i.lname, b.name FROM account a LEFT OUTER JOIN individual i ON a.cust_id = i.cust_id LEFT OUTER JOIN business b ON a.cust_id = b.cust_id ORDER BY a.account_id;

--10-4
SELECT 1 + ones.num + tens.num FROM (SELECT 0 num UNION ALL SELECT 1 num UNION ALL SELECT 2 num UNION ALL SELECT 3 num UNION ALL SELECT 4 num UNION ALL SELECT 5 num UNION ALL SELECT 6 num UNION ALL SELECT 7 num UNION ALL SELECT 8 num UNION ALL SELECT 9 num) ones CROSS JOIN (SELECT 0 num UNION ALL SELECT 10 num UNION ALL SELECT 20 num UNION ALL SELECT 30 num UNION ALL SELECT 40 num UNION ALL SELECT 50 num UNION ALL SELECT 60 num UNION ALL SELECT 70 num UNION ALL SELECT 80 num UNION ALL SELECT 90 num) tens;
