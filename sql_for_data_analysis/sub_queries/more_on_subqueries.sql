-- first orders ever placed by month
SELECT DATE_TRUNC('month', o.occurred_at) as month
FROM ORDERS o
GROUP BY 1
ORDER BY 1
LIMIT 1;

-- entire first month of orders average order of various paper types
SELECT AVG(standard_qty) as standard_avg, AVG(gloss_qty) as gloss_avg, AVG(poster_qty) as poster_avg
    FROM orders
    WHERE DATE_TRUNC('month', occurred_at) = (
        SELECT DATE_TRUNC('month', MIN(occurred_at)) FROM orders);

                                                                                                       
-- total amt usd all orders in first month
SELECT SUM(total_amt_usd)
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = 
      (SELECT DATE_TRUNC('month', MIN(occurred_at)) FROM orders);

                                                                                                       

