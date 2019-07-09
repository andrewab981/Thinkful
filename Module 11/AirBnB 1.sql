SELECT
	s.id,
	s.name,
	(price * minimum_nights) total
FROM
	sfo_listings s
ORDER BY total DESC;