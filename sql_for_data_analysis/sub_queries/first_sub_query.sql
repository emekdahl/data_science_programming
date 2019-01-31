SELECT channel, AVG(event_count) FROM
(SELECT DATE_TRUNC('day', w.occurred_at) as day, w.channel, COUNT (*) as event_count
FROM web_events w
GROUP by 1, 2
ORDER BY 3 DESC, 1) sub
GROUP BY 1;