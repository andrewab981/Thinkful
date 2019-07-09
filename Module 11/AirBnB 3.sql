SELECT
	c.calender_date,
	AVG(l.price) avg_prices
FROM
	sfo_calendar c
JOIN
	sfo_listings l
ON
	l.id = c.listing_id
WHERE
	c.available = 't'
GROUP BY 1
ORDER BY avg_prices DESC;
