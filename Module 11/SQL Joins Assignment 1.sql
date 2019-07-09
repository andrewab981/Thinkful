WITH
	rain
AS(
	SELECT
		DATE(date) dates
	FROM
		weather
	WHERE 
		events = 'Rain'
	GROUP BY 1
	)

SELECT
	t.trip_id,
	t.duration
FROM
	trips t
JOIN
	rain
ON DATE(t.start_date) = rain.dates
ORDER BY t.duration DESC
LIMIT 3;
