SELECT DISTINCT r.name region_name, a.name account_name
FROM accounts a
INNER JOIN sales_reps s on a.sales_rep_id = s.id
INNER JOIN region r on s.region_id = r.id
ORDER BY a.name;

SELECT DISTINCT s.name sr_name, a.name account_name
FROM accounts a
INNER JOIN sales_reps s on a.sales_rep_id = s.id
INNER JOIN region r on s.region_id = r.id
ORDER BY s.name;