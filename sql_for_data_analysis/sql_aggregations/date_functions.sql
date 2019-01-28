-- Find the sales in terms of total dollars for all orders in each year, ordered from greatest to least. Do you notice any trends in the yearly sales totals?
SELECT DATE_PART('year', occurred_at) as year, SUM(total_amt_usd) as total_sales
FROM orders
GROUP by 1
ORDER by 2 DESC;

-- Which month did Parch & Posey have the greatest sales in terms of total dollars? Are all months evenly represented by the dataset?
SELECT DATE_PART('month', occurred_at) as month, SUM(total) as total_sales, COUNT(occurred_at) as date_count
FROM orders
GROUP by 1
ORDER by 2 DESC;

-- Which year did Parch & Posey have the greatest sales in terms of total number of orders? Are all years evenly represented by the dataset?
SELECT DATE_PART('year', occurred_at) as year, COUNT(*) as total_orders
FROM orders
GROUP by 1
ORDER by 2 DESC;

-- Which month did Parch & Posey have the greatest sales in terms of total number of orders? Are all months evenly represented by the dataset?
SELECT DATE_PART('month', occurred_at) as month, COUNT(*) as total_orders
FROM orders
GROUP by 1
ORDER by 2 DESC;

-- In which month of which year did Walmart spend the most on gloss paper in terms of dollars?
SELECT DATE_PART('month', occurred_at) as month, SUM(gloss_amt_usd) as total_gloss_sales
FROM orders o
JOIN accounts a on o.account_id = a.id
WHERE a.name like '%Walmart%'
GROUP by month
ORDER by total_gloss_sales DESC;