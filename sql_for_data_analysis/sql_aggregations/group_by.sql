-- Which account (by name) placed the earliest order? Your solution should have the account name and the date of the order.
SELECT a.name, o.occurred_at 
FROM accounts a
JOIN orders o on a.id = o.account_id
ORDER BY o.occurred_at
LIMIT 1;

-- Find the total sales in usd for each account. You should include two columns - the total sales for each company's orders in usd and the company name.
SELECT a.name, SUM(o.total_amt_usd) as total_sales
FROM accounts a
JOIN orders o on a.id = o.account_id
GROUP BY a.name;

-- Via what channel did the most recent (latest) web_event occur, which account was associated with this web_event? Your query should return only three values - the date, channel, and account name.
SELECT a.name, w.channel, w.occurred_at
FROM web_events w
INNER JOIN accounts a ON w.account_id = a.id
ORDER BY w.occurred_at DESC
LIMIT 1;

-- Find the total number of times each type of channel from the web_events was used. Your final table should have two columns - the channel and the number of times the channel was used.
SELECT w.channel, COUNT(*) as channel_count
FROM web_events w
GROUP BY w.channel;

-- Who was the primary contact associated with the earliest web_event? 
SELECT s.name
FROM accounts a
INNER JOIN web_events w ON w.account_id = a.id
ORDER BY w.occurred_at
LIMIT 1;

-- What was the smallest order placed by each account in terms of total usd. Provide only two columns - the account name and the total usd. Order from smallest dollar amounts to largest.
SELECT a.name, MIN(o.total_amt_usd) as smallest_order
FROM accounts a
INNER JOIN orders o ON a.id = o.account_id
GROUP BY a.name
ORDER BY smallest_order;

-- Find the number of sales reps in each region. Your final table should have two columns - the region and the number of sales_reps. Order from fewest reps to most reps.
SELECT r.name as region, COUNT(s.id) as num_reps
FROM region r
INNER JOIN sales_reps s on r.id = s.region_id
GROUP BY r.name
ORDER BY num_reps;

-- For each account, determine the average amount of each type of paper they purchased across their orders. Your result should have four columns - one for the account name and one for the average quantity purchased for each of the paper types for each account. 
SELECT a.name, AVG(o.standard_qty) as std_avg, AVG(o.gloss_qty) as gls_avg, AVG(o.poster_qty) as pstr_avg
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.name;

-- For each account, determine the average amount spent per order on each paper type. Your result should have four columns - one for the account name and one for the average amount spent on each paper type.
SELECT a.name, AVG(o.standard_amt_usd) as std_amt, AVG(o.gloss_amt_usd) as gls_amt, AVG(o.poster_amt_usd) as pstr_amt
FROM accounts a
INNER JOIN orders o on a.id = o.account_id
GROUP BY a.name;

-- Determine the number of times a particular channel was used in the web_events table for each sales rep. Your final table should have three columns - the name of the sales rep, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.
SELECT s.name, w.channel, COUNT(w.channel) as channel_count
FROM web_events w
INNER JOIN accounts a on a.id = w.account_id
INNER JOIN sales_reps s on a.sales_rep_id = s.id
GROUP by s.name, w.channel
ORDER BY channel_count DESC;

-- Determine the number of times a particular channel was used in the web_events table for each region. Your final table should have three columns - the region name, the channel, and the number of occurrences. Order your table with the highest number of occurrences first.
SELECT r.name, w.channel, COUNT(w.channel) as channel_count
FROM web_events w
INNER JOIN accounts a on a.id = w.account_id
INNER JOIN sales_reps s on a.sales_rep_id = s.id
INNER JOIN region r on s.region_id = r.id
GROUP by w.channel, r.name
ORDER BY channel_count DESC;