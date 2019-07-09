SELECT
	neighbourhood,
	AVG(number_of_reviews) reviews
FROM 
	sfo_listings
GROUP BY 1
ORDER BY reviews DESC;