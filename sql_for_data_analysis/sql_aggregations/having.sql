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
SELECT a.id, a.name, COUNT(o.id) order_count
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.id, a.name
ORDER BY order_count DESC
LIMIT 1;

-- Which accounts spent more than 30,000 usd total across all orders?
SELECT a.id, a.name, SUM(o.total_amt_usd) order_amt
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.id, a.name
HAVING SUM(o.total_amt_usd) > 30000
ORDER BY order_amt DESC;

-- Which accounts spent less than 1,000 usd total across all orders?
SELECT a.id, a.name, SUM(o.total_amt_usd) order_amt
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.id, a.name
HAVING SUM(o.total_amt_usd) < 1000
ORDER BY order_amt DESC;

-- Which account has spent the most with us?
SELECT a.id, a.name, SUM(o.total_amt_usd) order_amt
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.id, a.name
HAVING SUM(o.total_amt_usd) > 100000
ORDER BY order_amt DESC
LIMIT 1;

-- Which account has spent the least with us?
SELECT a.id, a.name, SUM(o.total_amt_usd) order_amt
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.id, a.name
HAVING SUM(o.total_amt_usd) < 1000
ORDER BY order_amt
LIMIT 1;

-- Which accounts used facebook as a channel to contact customers more than 6 times?
SELECT a.id, a.name, COUNT(w.channel) fb_count
FROM accounts a
INNER JOIN web_events w on a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.id, a.name
HAVING COUNT(w.channel) > 6
ORDER BY fb_count DESC;

-- Which account used facebook most as a channel? 
SELECT a.id, a.name, COUNT(w.channel) fb_count
FROM accounts a
INNER JOIN web_events w on a.id = w.account_id
WHERE w.channel = 'facebook'
GROUP BY a.id, a.name, w.channel
ORDER BY fb_count DESC
LIMIT 1;

-- Which channel was most frequently used by most accounts?
SELECT w.channel, COUNT(a.id) account_count
FROM accounts a
INNER JOIN web_events w on a.id = w.account_id
GROUP BY w.channel
ORDER BY account_count DESC
LIMIT 1;