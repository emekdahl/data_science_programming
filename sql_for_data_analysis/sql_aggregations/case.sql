-- Write a query to display for each order, the account ID, total amount of the order, and the level of the order - ‘Large’ or ’Small’ - depending on if the order is $3000 or more, or smaller than $3000.
SELECT o.account_id, o.total_amt_usd,
CASE 
	WHEN o.total_amt_usd >= 3000 THEN 'Large' 
	WHEN o.total_amt_usd < 3000 THEN 'Small'
END 
FROM orders o;
-- Write a query to display the number of orders in each of three categories, based on the 'total' amount of each order. The three categories are: 'At Least 2000', 'Between 1000 and 2000' and 'Less than 1000'.
SELECT COUNT(o.id) as order_count,
CASE 
	WHEN o.total > 2000 THEN 'Over 2k' 
	WHEN o.total <= 2000 AND o.id >= 1000  THEN 'Between 1k and 2k'
    WHEN o.total < 1000 THEN 'Under 1K'
END 
FROM orders o
GROUP by 2;
-- We would like to understand 3 different levels of customers based on the amount associated with their purchases. The top level includes anyone with a Lifetime Value (total sales of all orders) greater than 200,000 usd. The second level is between 200,000 and 100,000 usd. The lowest level is anyone under 100,000 usd. Provide a table that includes the level associated with each account. You should provide the account name, the total sales of all orders for the customer, and the level. Order with the top spending customers listed first.
SELECT a.name, SUM(o.total_amt_usd) as total_sales,
CASE 
	WHEN SUM(o.total_amt_usd) > 200000 THEN 'Over 200k' 
	WHEN SUM(o.total_amt_usd) <= 200000 AND SUM(o.total_amt_usd) >= 100000  THEN 'Between 100k and 200k'
    WHEN SUM(o.total_amt_usd) < 100000 THEN 'Under 100K'
END as level
FROM orders o
JOIN accounts a on o.account_id = a.id
GROUP by 1
ORDER BY total_sales DESC;

-- We would now like to perform a similar calculation to the first, but we want to obtain the total amount spent by customers only in 2016 and 2017. Keep the same levels as in the previous question. Order with the top spending customers listed first.


-- We would like to identify top performing sales reps, which are sales reps associated with more than 200 orders. Create a table with the sales rep name, the total number of orders, and a column with top or not depending on if they have more than 200 orders. Place the top sales people first in your final table.


-- The previous didn't account for the middle, nor the dollar amount associated with the sales. Management decides they want to see these characteristics represented as well. We would like to identify top performing sales reps, which are sales reps associated with more than 200 orders or more than 750000 in total sales. The middle group has any rep with more than 150 orders or 500000 in sales. Create a table with the sales rep name, the total number of orders, total sales across all orders, and a column with top, middle, or low depending on this criteria. Place the top sales people based on dollar amount of sales first in your final table. You might see a few upset sales people by this criteria!