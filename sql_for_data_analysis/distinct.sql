-- Use DISTINCT to test if there are any accounts associated with more than one region.

SELECT DISTINCT r.name region_name, a.name account_name
FROM accounts a
INNER JOIN sales_reps s on a.sales_rep_id = s.id
INNER JOIN region r on s.region_id = r.id
ORDER BY a.name;

SELECT DISTINCT id, name
FROM accounts;

-- Have any sales reps worked on more than one account?
SELECT s.id, s.name sr_name, COUNT(*) num_accounts
FROM accounts a
INNER JOIN sales_reps s on a.sales_rep_id = s.id
GROUP BY s.id, s.name
ORDER BY s.name;

SELECT DISTINCT id, name
FROM sales_reps;