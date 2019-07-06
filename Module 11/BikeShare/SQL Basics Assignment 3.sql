SELECT
	date,
	mintemperaturef,
	precipitationin
FROM 
	weather
WHERE
	zip = 94301 AND
	precipitationin > 0;

	