-- first orders ever placed by month
SELECT DATE_TRUNC('month', o.occurred_at) as month
FROM ORDERS o
GROUP BY 1
ORDER BY 1
LIMIT 1;

-- entire first month of orders average order of various paper types
SELECT AVG(o.standard_qty) as standard_avg, AVG(o.gloss_qty) as gloss_avg, AVG(o.poster_qty) as poster_avg
    FROM orders o
    WHERE DATE_TRUNC('month', o.occurred_at) = (
        SELECT DATE_TRUNC('month', o.occurred_at) as min_month
            FROM orders o
            ORDER BY min_month
            LIMIT 1)

                                                                                                       


                                                                                                       

