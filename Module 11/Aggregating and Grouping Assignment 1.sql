SELECT
	date,
	zip,
	MAX(maxtemperaturef) AS maxtemp	
FROM
	weather
GROUP BY 
	date, 
	zip
ORDER BY maxtemp DESC
LIMIT 1;