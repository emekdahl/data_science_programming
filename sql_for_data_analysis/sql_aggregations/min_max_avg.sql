SELECT occurred_at 
FROM orders 
ORDER BY occurred_at
LIMIT 1;

SELECT MAX(occurred_at)
FROM web_events;

SELECT occurred_at
FROM web_events
ORDER BY occurred_at DESC
LIMIT 1;

SELECT AVG(standard_qty) as std_qty, 
AVG(gloss_qty) as gls_qty, 
AVG(poster_qty) as ptr_qty, 
AVG(standard_amt_usd) as std_amt, 
AVG(gloss_amt_usd) as gls_amt, 
AVG(poster_amt_usd) as ptr_amt
FROM ORDERS;

SELECT COUNT(*) as total_rows
from orders
GROUP BY total_amt_usd;