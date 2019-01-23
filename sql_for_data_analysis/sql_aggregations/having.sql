-- How many of the sales reps have more than 5 accounts that they manage?
SELECT s.id, s.name sr_name, COUNT(*) num_accounts
FROM accounts a
INNER JOIN sales_reps s on a.sales_rep_id = s.id
GROUP BY s.id, sr_name
HAVING COUNT(*) > 5
ORDER BY num_accounts;

-- How many accounts have more than 20 orders?
SELECT a.id, a.name, COUNT(o.id) order_count
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.id, a.name
HAVING COUNT(o.id) > 20
ORDER BY order_count;

-- Which account has the most orders?


-- Which accounts spent more than 30,000 usd total across all orders?


-- Which accounts spent less than 1,000 usd total across all orders?


-- Which account has spent the most with us?


-- Which account has spent the least with us?


-- Which accounts used facebook as a channel to contact customers more than 6 times?


-- Which account used facebook most as a channel? 


-- Which channel was most frequently used by most accounts?