-- first orders ever placed by month
SELECT DATE_TRUNC('month', o.occurred_at) as month
FROM ORDERS o
GROUP BY 1
ORDER BY 1
LIMIT 1;

--